/**
 * @File Name          : SearchTechniques.cls
 * @Description        : 
 * @Author             : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Group              : 
 * @Last Modified By   : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Last Modified On   : 31/3/2020, 10:55:58 am
 * @Modification Log   : 
 * Ver       Date            Author      		    Modification
 * 1.0    31/3/2020   ChangeMeIn@UserSettingsUnder.SFDoc     Initial Version
**/
public class SearchTechniques {
/**
	 * This method is used to search element in given list.
	 *
	 * @actions
	 * - Check if number is  present in list by Comparing each element
	 *
	 * @param arrayElement - List of integers.
	 * @param Key            -Element to find in list

	 *
	 * @return - Position of element
	 **/
	public static Integer linearSearch(List<Integer> arrayElement, Integer Key) {
		//flag is used to verify the element is found
		Boolean flag = false;
		for(Integer index = 0; index < arrayElement.size(); index ++) {
			//in this compare key element with each array element and set flag true and break the loop
			if(key == arrayElement [index]) {
				System.debug('Array Element Found At Position' + (index + 1));
				flag= true;
				break;
			}
		}
		if(flag == true) {
			return 1;
		} else {
			System.debug('Element Not Found');
			return 0;
		}
	}



	/**
	 * This method is used to search element in given list.
	 *
	 * @actions
	 * - Check if number is  present in list by Comparing each element by deviding array
	 *
	 * @param arrayElement - List of integers.
	 * @param Key            -Element to find in list

	 *
	 * @return - Position of element
	 **/
	public static Integer binarySearch(List<Integer> arrayElement, Integer Key) {
		//initially flag set to true
		Boolean flag = false;
		//mid is used to calulated middle index of array
		//first is first index of array and last is last index
		Integer mid, start = 0, last;
		last= arrayElement.size() -1;

		while(start <= last) {
			//calculate mid using average of firstt and last.
			mid= (start + last) /2;
			if(arrayElement [mid] == key) {
				//if key is found set flag = true
				system.debug('Element is present at ' + (mid + 1));
				flag= true;
				break;
			} else {
				if(key < arrayElement [mid]) {
					//if key element is less than middle element make last index as mid-1
					last = mid - 1;
				} else {
					//if key element is greater than middle element make first index as mid+1
					start = mid + 1;
				}
			}
		}
		if(flag == true) {
			return 1;
		} else {
			return 0;
		}
	}
} 