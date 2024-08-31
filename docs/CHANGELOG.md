# Changelog for BGF-QGIS 3.x

**Author:** Willeke A'Campo

## BGF-QGIS_2.x release (2017)

- A QField app developed by Horvath et al. (2017), which allows for the registration of BGF types in QGIS 2.x. 
- The QField app is released on GitHub: [peterhor/BGF-QGIS](https://github.com/peterhor/BGF-QGIS)
- **Documentation:** [NINA report 1445 - BGF in QGIS ](https://github.com/peterhor/BGF-QGIS/blob/master/BGF_QGIS_GitHub/DOCUMENTATION/NINA%20Report%201445%20-%20BGF%20in%20QGIS.pdf)

## BGF_QGIS_3.x release (2024)

- Updated version of the QGIS template for BGF typology mapping for use in QGIS 3.x. 
- Tested during the BGF-QGIS workshop at NINA, Oslo, september 2024.
- **Documentation:** [Local Ecosystem accounts - a technical guidebook](https://ninanor.github.io/EAguide/data-collection/field-surveys/field-surveys.html)

**Updates:**

- The QGIS project is updated to QGIS 3.x.
- All .shp and .csv are saved inside one GPKG.
- The BGF typology layer is updated to BGF Oslo 2023 and BGF Standard Norge 2020.
- The BGF typology layer is updated to include a twin point layer that is syncronised to simplify digitization in the field.
- The BGF typology layer is updated to include a cost calculation for production and maintenance.
- The BGF typology layer is updated to include an automatic BGF score calculation.
- Online basemaps are added to the project.
- BGF norm and cost calculation can be exported to a CSV file.

## Future improvements

- Create one QGIS project for mapping both BGF, NiN and Biodiveristy Metrics typologies. 
    - Note that the Biodiversity Metrics and NiN typologies are quite complex, and it might be difficult to combine them in one project.
    - Note that QGIS NiN 3.0 is not yet released, and the typologies might change.
- Add a grid layer that can be used to snap to when digitizing typologies. 
    - This grid can be used to standardize labeling of typologies for creating a benchmark dataset for training machine learning models.
    - Possible grid options: Sentinel raster, VHR raster
- Add ELC10 and Google Dynamic World as a offline and online Basemap
    - ELC10 must first be published as a WMS service. 
- Create a PDF report that shows the BGF typologies and the BGF score. 
    - This report can be used for communication with stakeholders and for documentation purposes. 
    - The report should be generated automatically when the BGF score is calculated.
- Cost module: account for spatial explicit characteristics such as land use/soil type when calculating costs. 
    - e.g. cost will be higher/lower than average for certain soil types
    - soil type maps need to be available in the project area or first manually mapped.

## Comparison of BGF-QGIS v2.x and v3.x

**Table 1.** Comparison of specifications.
| Specs | BGF-QGIS-2.x | BGF-QGIS-3.x |
| --- | --- | --- |
| **QGIS Version** | v2.18.11 *Las Palmas* | >v3.28 |
| **BGF Norm** | <li>BGF 2017</li>| <li>BGF Oslo 2023</li><li>Standard Norge BGF 2020</li> |

<br>

**Table 2.** Comparison of functionality.
| **Functionality** | BGF-QGIS-2.x | BGF-QGIS-3.x |
| --- | --- | --- |
| **Blue-green Structure Typology Mapping** | A polygon layer with attributes for BGF Norm 2017 is available for digitizing typologies. | A polygon layer with attributes for BGF 2023 and SN BGF 2020 is available for digitizing typologies. In addition, a twin point layer is available that is syncronised to simplify digitization in the field. |
| **Digitization Features** | <li>tracing</li> <li>snapping</li>| <li>tracing</li> <li>snapping</li> |
| **BGF Norm Calculation** | Export CSV from QGIS and calculate BGF Norm 2017 in Excel. | The BGF-QGIS calculates the BGF norm and automatically updates this norm if area or attribute changes are made to the Blue-green structure typology polygons. <br><br> BGF norm is calculated for: <li>BGF Oslo 2023</li> <li>Standard Norge BGF 2020</li> <li> User-defined weights </li>|
| **BGF Cost Calculation** | Not available | The BGF-QGIS calculates the production and maintance cost per typology polygon and as total of the project area.  |

<br>

**Table 3.** Comparison of data layers.
| Map Layer | BGF-QGIS-2.x | BGF-QGIS-3.x |
| --- | --- | --- |
| **Project Area**| BGF_locality_area.shp | bgf_oslo.gpkg/bgf_locality_area|
| **Blue-Green Structures Typology** | BGF_flate.shp | bgf_oslo.gpkg/bgf_flate |
| **Tables**| BGF Norm 2017 look up tables:<li>1_EN_bluegreen_areas.csv</li> <li>2_EN.csv</li> <li>BGF_EN.csv</li> <li>0_EN.csv</li> | |
| **Online Basemaps** | None available in the template.   | <li>Kartverket N50 topographic map</li><li>NiB orthomosaic</li><li>Overflatemodell (DOM)</li><li>Terrengmodell (DTM)</li><li>FKB bygning</li><li>Matrikkel Eiendomskart</li><li>Grunnkart for ARealregnskap</li> |
| **Offline Basemaps** | None available in the template. Available in some specific projects. | Guidelines available for downloading and adding the following offline basemaps: <li>Oslo trekroner (2021)</li> <li>FKB bynging område</li> <li>Matrikkel Eiendomskart</li> |