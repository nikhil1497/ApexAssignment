/**
 * @File Name          : QuickSort.cls
 * @Description        : 
 * @Author             : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Group              : 
 * @Last Modified By   : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Last Modified On   : 30/3/2020, 9:52:34 pm
 * @Modification Log   : 
 * Ver       Date            Author      		    Modification
 * 1.0    30/3/2020   ChangeMeIn@UserSettingsUnder.SFDoc     Initial Version
**/
 public with sharing class QuickSort {
	/**
	 * This method is used to make partitions.
	 *
	 * @actions
	 * -Accept  Integer List and make partition
	 *
	 * @param arrayList - List of integers.
	 *@param startIndex - First Index Of Array.
	 *@param endIndex   - End Index Of Array.

	 * @return - partition
	 **/
	public static Integer partition(List<Integer> arrayList, Integer startIndex, Integer endIndex) {
		Integer pivot = arrayList [endIndex];
		Integer index = (startIndex - 1); // index of smaller element
		for (Integer nextIndex = startIndex; nextIndex < endIndex; nextIndex ++) {
			// If current element is smaller than the pivot
			if(arrayList [nextIndex] < pivot) {
				index++;

				// swap arr[i] and arr[j]
				Integer temp = arrayList [index];
				arrayList[index] = arrayList [nextIndex];
				arrayList[nextIndex] = temp;
			}
		}

		// swap arr[i+1] and arr[high] (or pivot)
		Integer temp = arrayList [index + 1];
		arrayList[index + 1] = arrayList [endIndex];
		arrayList[endIndex] = temp;
		System.debug(arrayList[index]);
		return index + 1;
	}


	/**
	 * This method is used to make partitions.
	 *
	 * @actions
	 * -Acaept  Integer List ,start and end index
	 *
	 * @param arrayList - List of integers.
	 *@param startIndex - First Index Of Array.
	 *@param endIndex   - End Index Of Array.

	 * @return - sorted List
	 **/
	public static List<Integer> sort(List<Integer> arrayList, Integer startIndex, Integer endIndex) {
		if(arrayList.size() > 0) {
			if(startIndex < endIndex) {
				/* partitionIndex is partitioning index, arrayList[partitionIndex] is
				 now at right place */
				Integer partitionIndex = partition(arrayList, startIndex, endIndex);

				// Recursively sort elements before
				// partition and after partition
				sort(arrayList, startIndex, partitionIndex - 1);
				sort(arrayList, partitionIndex + 1, endIndex);
			}
			print(arrayList);
			return arrayList;
		} else {
			System.debug('Enter Elements in array');
            return arrayList;
		}
	}
	public static void print(List<Integer> arrayList) {
		for(Integer index :arrayList) {
			System.debug(index);
		}
	}
}