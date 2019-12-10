using System.Collections.Specialized;
using UnityEngine;
[CreateAssetMenu(menuName = "Data/FloatInput")]
public class FloatInput : FloatData
{
    public KeyCodeData Keys;

    public override float Value
    {
        get
        {
            if (Keys.KeyHold())
            {
                return value;
            }

            return 0;
        }
    }
}
