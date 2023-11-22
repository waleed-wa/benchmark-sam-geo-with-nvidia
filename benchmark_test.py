import os
import leafmap
from samgeo import SamGeo, show_image, download_file, overlay_images, tms_to_geotiff
import datetime as dt


print("Running benchmark script ...")
image = "satellite.tif"

sam = SamGeo(
            model_type="vit_h",
                sam_kwargs=None,
            checkpoint_dir='./checkpoints/'
            )

s = dt.datetime.now()
print(f"Starting timer at : {s}")
sam.generate(image, output="masks.tif", foreground=True, unique=True)

e = dt.datetime.now()

print(f"Time taken = {e-s}")

