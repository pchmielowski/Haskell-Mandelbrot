import matplotlib.pyplot as plt
import numpy as np
import json
import sys

plt.imshow(np.array(json.loads(str(sys.stdin.read()))))
plt.gray()
plt.show()