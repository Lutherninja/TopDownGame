using UnityEngine;
[CreateAssetMenu(fileName = "NewFloat", menuName = "Data/FloatData")]
public class FloatData : Saving_Object_Base
{
	public float value;
	public virtual float Value
	{
		get {return value;}
	}

	public void changeFloat(int val)
	{
		value = val;
	}

	public override void Set(ScriptableObject obj)
	{
		FloatData floatData = obj as FloatData;
		if (floatData == null)
			return;
		value = floatData.value;
	}
}
