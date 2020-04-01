/**
 * @File Name          : SortingTechniques.cls
 * @Description        : 
 * @Author             : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Group              : 
 * @Last Modified By   : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Last Modified On   : 31/3/2020, 11:24:28 am
 * @Modification Log   : 
 * Ver       Date            Author      		    Modification
 * 1.0    31/3/2020   ChangeMeIn@UserSettingsUnder.SFDoc     Initial Version
**/
public class SortingTechniques {
	/**
	 * This method is used to sort the integer list in ascending order using bubble sort.
	 *
	 * @actions
	 * -Accept  Integer List and apply bubble sort
	 *
	 * @param integerList - List of integers. 

	 *
	 * @return - sorted list in ascending order
	 **/
	public static List<Integer> bubbleSortMethod(List<Integer> integerList) {
		//temp is a temporary element used to swap elements
		integer temp = 0;
		if(integerList.size() > 0) {
			for(integer index = 0; index < integerList.size(); index ++) {
				for(integer nextIndex = 1; nextIndex <(integerList.size() - index); nextIndex ++) {
					if(integerList [nextIndex - 1] > integerList [nextIndex]) {
						//swap the elements!
						temp = integerList [nextIndex - 1];
						integerList[nextIndex - 1] = integerList [nextIndex];
						integerList[nextIndex] = temp;
					}
				}

			}

			System.debug('values ' + integerList);
			return integerList;
		} else {
			return integerList;
		}
	}
	/**
	 * This method is used to sort the integer list in ascending order using insertion sort.
	 *
	 * @actions
	 * -Accept  Integer List and apply insertion sort
	 *
	 * @param integerList - List of integers.

	 *
	 * @return - sorted list in ascending order
	 **/
	public static List<Integer> insertionSort(List<Integer> integerList) {
		if(integerList.size() > 0) {
			for (integer index = 1; index < integerList.size(); index ++) {
				integer key = integerList [index];
				//j is initially 0th index
				integer nextIndex = index - 1;

				while(nextIndex >= 0 && integerList [nextIndex] > key) {
					// moving the left side element to one position forward.
					integerList[nextIndex + 1] = integerList [nextIndex];
					nextIndex = nextIndex - 1;
				}
				integerList[nextIndex + 1] = key;
				system.debug(integerList);
			}
			return integerList;
		} else {
			return integerList;
		}
	}

	/**
	 * This method is used to sort the integer list in ascending order using Selection sort.
	 *
	 * @actions
	 * -Accept  Integer List and apply Selection sort
	 *
	 * @param integerList - List of integers.

	 *
	 * @return - sorted list in ascending order
	 **/
	public static List<Integer> selectionSort(List<Integer> integerList) {
		// One by one move boundary of unsorted subarray
		if(integerList.size() > 0) {
			for (Integer index = 0; index < integerList.size() -1; index ++) {
				// Find the minimum element in unsorted array
				Integer min_idx = index;
				for (Integer nextIndex = index + 1; nextIndex < integerList.size(); nextIndex ++)
					if(integerList [nextIndex] < integerList [min_idx])
					min_idx = nextIndex;

				// Swap the found minimum element with the first
				// element
				Integer temp = integerList [min_idx];
				integerList[min_idx] = integerList [index];
				integerList[index] = temp;
			}
			for(Integer a :integerList) {
				System.debug(a);
			}
			return integerList;
		} else {
			return integerList;
		}
	}
}