#  Epoxy Resistivity Test on Printed Circuit Board

## Plan
To create a KiCad design for bulk resistivity epoxy test measurments as well as epoxy resistivity when placed on a surface that mimics the chip features (Application Specific Integrated Circuit Si-CMOS chip). On a single PCB board we plan to test the resistivity of an epoxy under different surface conditions before we move on to the actual chips themselves. Our hope, is to fuse a single pervoskite crystal on top of the epoxy if we can manage to come up with a method to apply a controllably thin layer of an epoxy that must also match the resistivity of the Si substrate (adding a graphite filler to epoxy). 

Gerber top view
![Top](/doc/assets/PCB/TopPCB.png)

Gerber bottom view
![Bottom](/doc/assets/PCB/BottomPCB.png)

Gerber layer view
![Layers](/doc/assets/PCB/LayersPCB.png)

## Board Details 
* 100x100mm
* Three large pads (35mmx35mm) that allow us to measure the epoxy bulk resistivity and one large pad that mimics the chip surface features using solder mask design instead of individual vias - this one pad has 6milx6mil dimensions with 6mil spacing in between each solder design. Note that the three large pads have no solder just bare FR4 and Cu. Also, for all designs there is no silk screen present (electric field flares and current goes through the sides (area is no longer accurate but can be fixed by making the pads bigger)).    
* Small arrays have pad sizes of 1.0mmx1.0mm, individual vias, connected, with solder mask (it mimics the role of passivation) and we are interested in the structure or passivation structure and how it will affect the measurments. 
* Vias to the backside and make connection for the backside - solder a wire to it for measuring
    * One via for each of the three large pads connected by a trace - Drill: 0.3mm; Diameter: 0.6mm
    * Fourth large pad has via inside pad -  Drill: 0.3mm; Diameter: 0.6mm
    * One via for each 1.0mmx1.0mm pad (small array) connected in daisy chain pattern with Cu traces - Drill: 0.2mm; Diameter: 0.4mm
* All soldering pad sizes on the bottom of the PCB are 10.0mmx10.0mm
* Tool holes for every corner set a 3mm diameter 

## Objectives
We need bulk resistivity with a very thin layer or in other words controllably thin. We also need to come up with a mechanical mechanism to control the thickness applied. We need some kind of film in between the two PCBs that sets the gap. The reason we are using large pads is to minimize the peripheral effect in order to measure correctly. That is our first objective to measure the bulk resistivity. The second objective is to make the small array and see if the structure/passivation will affect the measurement. We are also very interested in modifying the resistivity between regions (resistance of pad-pad and resistance for source pad: Rs<<Rp-p) and applying an epoxy with final layer thickness <1 micron. 

## Epoxy Candidates
1) [EPO-TEK® 301-2](https://www.epotek.com/docs/en/Datasheet/301-2.pdf)
* Volume Resistivity: ≥2x10^12 Ohm-cm
* [Purchase](https://www.laddresearch.com/chemicals/epo-tek-301-2-epoxy-resin-5060)

2) [Master Bond EP30-2](https://www.masterbond.com/tds/ep30-2)
* Volume Resistivity: >10^15 ohm-cm
* [MasterBond](https://www.masterbond.com)

3) [EpoxySet EB-315](https://epoxysetinc.com/wp-content/uploads/2020/03/EB-315.pdf)
* Volume Resistivity: 2x10^15 ohm-cm
* [EB-315](https://epoxysetinc.com/product/eb-315/)

4) [Dymax 9001-E-V3.5](https://www.ellsworth.com/products/by-manufacturer/dymax/encapsulants/uv-curing/dymax-multi-cure-9001-e-v3.5-uv-curing-encapsulant-clear-170-ml-cartridge/?srsltid=AfmBOorZjfYYmCmlOcWkSnxyRjvTr2e21JFwku0HsaL0gSIH-5wpNKFO)
* Volume Resistivity: 10^12 ohm-cm
* [Ellsworth](https://www.ellsworth.com/products/by-manufacturer/dymax/encapsulants/uv-curing/dymax-multi-cure-9001-e-v3.5-uv-curing-encapsulant-clear-30-ml-mr-syringe/?gad_source=1&gbraid=0AAAAAD_P3NHR8ELs3TAAU6QoGWj8NjrWA&gclid=CjwKCAiAw5W-BhAhEiwApv4goCe4mHgQJUezGabBxlys4fuh_6th7l_SkuixxjqWOsaDckQxBQdMORoCAigQAvD_BwE)
* [ebay - 2014](https://www.ebay.com/itm/266099712844?_skw=EpoxySet+EB-315Dymax+9001-E-V3.5&itmmeta=01JNES5BXQWCQHDWK94W233K32&hash=item3df4c7634c:g:0moAAOSwOIFjz-yW&itmprp=enc%3AAQAKAAAA4FkggFvd1GGDu0w3yXCmi1fN%2BntivxzV7wXvIQiv5AbHEBmQDP9B1SVzAj%2B98Drf7Os%2F9og71t7GQCWQku8CWPQsyMfhEylBrheljGM%2BSDzrds8d2rcQTHnwfdOAb33mJZ69Ijy%2B5FKyOY9LiD3%2FQl0GZV7HpLlJutCy7PmFKBjzHfpn%2FhHKW44PEAr1%2Fojo459TOcoXszq0%2BzMcvHhMZ%2FYyqLv70zoX3KLuefcEw%2FEkJG5LDztsdjVVnNS9vibIEFumekQSgrM6VyjjGe4gxX7GQwS4XBpo%2BNPwWFDVnxqH%7Ctkp%3ABk9SR_i-ldmrZQ)
* [ebay - New DYMAX MULTI-CURE 9001-E-V3.1 UV CURING ENCAPSULANT CLEAR 10 ML MR SYRINGE](https://www.ebay.com/itm/256292219822?_skw=Dymax+9001-E-V3.5&itmmeta=01JNESNPERYG59SVKJTK5M2MFQ&hash=item3bac34ebae:g:PnoAAOSwdoplT-hS&itmprp=enc%3AAQAKAAAA8FkggFvd1GGDu0w3yXCmi1cHnBAQpBHY4yqwoPHaJ0e3P31LLLd9ukDLhu8HhYupM54TY0RG%2FiYkR9X8jIO8mmOPH0Z%2Fh6C8W1NBujsOtOz%2B2OY%2FJ8H1%2FRL2NWzyCz%2B9cyaNmlVJ51Q8VbwChumzEApYFXQFzwBMbs4oyeqS2%2BHDiJew2za4t5lUNZb8Q7sahVXme8oOKLrVWbksmxQdZ%2B0H%2B7yNromkc3K%2FOLFHVI73BYfgB7svjXgcJ1AM8JOcTxfPCsJWmqyw%2B4dfL%2FeUqfjFmXaPAmmbAUi4j9Zn2gIHEgnO7axLHF9XB65gKqIcSw%3D%3D%7Ctkp%3ABk9SR8Ln1tmrZQ)

5) [Epoxy Technology (EPO-TEK) 353ND](https://www.gluespec.com/Materials/adhesive/epoxy-technology/epo-tek-353nd-t-black?gad_source=1&gbraid=0AAAAADPMaixsTquGvj406EPbFsBsGVrlI&gclid=CjwKCAiAt4C-BhBcEiwA8Kp0CfBs1VBJ1iU9LKdFmu7nnigc9BzGwFvaLJmKbJNBN-zCEAwCjQwa1RoCN1sQAvD_BwE)
* Volume Resistivity: >= 4e12 (Ohm-cm)
* [Digikey - EPO-TEK 353ND 4 gram Bi-Pak](https://www.digikey.com/en/products/detail/epoxy-technology/EPO-TEK%2520353ND%25204%2520GRAM%2520BI-PAK/21379407?gclsrc=aw.ds&&utm_adgroup=&utm_source=google&utm_medium=cpc&utm_campaign=PMax%20Shopping_Product_High%20ROAS%20Categories&utm_term=&utm_content=&utm_id=go_cmp-20222717502_adg-_ad-__dev-c_ext-_prd-21379407_sig-CjwKCAiAw5W-BhAhEiwApv4goPFZ3nSFkuXoZjwZ44Inv1_LJC5s1URMZooktRjddRqGr-fYRfQ6ABoCMVYQAvD_BwE&gad_source=4&gbraid=0AAAAADrbLlhxIhLG_t9_OpDWZyi4K92c7&gclid=CjwKCAiAw5W-BhAhEiwApv4goPFZ3nSFkuXoZjwZ44Inv1_LJC5s1URMZooktRjddRqGr-fYRfQ6ABoCMVYQAvD_BwE)
* [ebay - EPOXY TECHNOLOGY EPO-TEK 353ND A&B 1LB (454g) New Free ship](https://www.ebay.com/itm/135392408681?_skw=Epoxy+Technology+%28EPO-TEK%29+353ND&itmmeta=01JNESBRHHY6AZNZHPKA56W0W5&hash=item1f86043469:g:bP8AAOSwyGlnIwtZ&itmprp=enc%3AAQAKAAABAFkggFvd1GGDu0w3yXCmi1dOVWfVPZO%2BKsq%2Fso6BC9tWeYiSl2UH1UUM6eKChPZNIv6e4BfH0TiMud7%2BDGzBbcuQH5VgU0WJeqTMTBuYKJ6EhHiUEd3ouoU0HR%2BFcMRfsBhHHx%2Bdkgo76z%2BKr3ES9bg27ujbiiBIU%2B9m486hAm7nhQfvumXsDnlvhsHcxIWZRwye6ToC%2FygjFotS9RqSreg88BAmTyHLzKqgsJJa2iSy0FYRSL%2FP%2BAh0EddZ9K7yrhRVoW8mFNxn3VINIymKWSPz%2FbEaEg3XzEucyWlFkYN9qcrErF4xTwnEID9NLd6hrYGyhHd%2FmTFPFzEfMuVCedQ%3D%7Ctkp%3ABk9SR-qIr9mrZQ)
* [CablesPlusUSA](https://store.cablesplususa.com/epoxy-consumables/et353nd/?srsltid=AfmBOorIYfVzIgP2OUJ6UxyoQpBb1YHUImzy6usqU_77vGYhVGw6IIw8)
* [ebay - Lot of 25 EPO-TEK 353ND 4GM BIPAK Heat-cured Epoxy 4-gram Packs EXPIRED: 1/2022](https://www.ebay.com/itm/403925331493?_skw=Epoxy+Technology+%28EPO-TEK%29+353ND&itmmeta=01JNESBRHHXTYCZS6KK3EJ30XN&hash=item5e0bd36e25:g:TO0AAOSwS5JjPx8i&itmprp=enc%3AAQAKAAABAFkggFvd1GGDu0w3yXCmi1dAK4ba3sgQOlKXSkKM8hxNpg0I%2FABAr35%2FISeLUsy64EqDlGSSbf8HQf0XcAmFPcaIdQVDnrYN5FunrmGcV8zha7iHUqhApXENodza6NRUoZ%2BJ43c%2B6KYnhDCO5aJ3vwdkeupswSBuy8C%2BdB7LPAZlbKqDV7A9rLJw0vpTSR6KMxxZmVFVQIMIiaS9IYyw4a7IHc61BYFXN8Z%2FTTFMSxDV2nas0nCLgfCHBANdFCB7IS8rfiRsA5Eioe0hqMF%2FaWK8pJ5m4PWb6FvKqSTVdAj0icWEklcgfw26wiUvdt5%2FPY%2B7IlbP1xtnE418s4tVBeQ%3D%7Ctkp%3ABFBM6oiv2atl)

6) [Dymax OP-61-LS](https://dymax.com/content/download/4404/file_archived/OP-61%20PDS.pdf)
* Volume Resistivity:???
* [ebay - 2023](https://www.ebay.com/itm/116234959124?chn=ps&norover=1&mkevt=1&mkrid=711-117182-37290-0&mkcid=2&mkscid=101&itemid=116234959124&targetid=2299003535955&device=c&mktype=pla&googleloc=9027258&poi=&campaignid=21214315381&mkgroupid=161363866036&rlsatarget=aud-1405249128624:pla-2299003535955&abcId=9407526&merchantid=119135464&gad_source=4&gbraid=0AAAAAD_QDh9gqb5gHsg4Pc2DfiJvFolJ3&gclid=CjwKCAiA5pq-BhBuEiwAvkzVZVKu5KIaq6LGuy6XMN3aOQSlSjncQ_a15SuJ1TX6SfT_HEnIvENuDBoCcx0QAvD_BwE)
* [ebay - 2023](https://www.ebay.com/itm/116364259104?chn=ps&norover=1&mkevt=1&mkrid=711-117182-37290-0&mkcid=2&mkscid=101&itemid=116364259104&targetid=2299003535955&device=c&mktype=pla&googleloc=9027258&poi=&campaignid=21214315381&mkgroupid=161363866036&rlsatarget=aud-1405249128624:pla-2299003535955&abcId=9407526&merchantid=119135464&gad_source=4&gbraid=0AAAAAD_QDh9gqb5gHsg4Pc2DfiJvFolJ3&gclid=CjwKCAiA5pq-BhBuEiwAvkzVZWr36P08qfPQd6NRlun0ZHN5CXZE2OlRJKc1z81r2T93erybBSgHjhoCrRcQAvD_BwE)
* [ebay - expired 2020](https://www.ebay.com/itm/156284455621)
* [ebay - expired 2020](https://www.ebay.com/itm/167321149980?itmmeta=01JNGTRHQZ0511RF8BE6FFVQHM&hash=item26f51e221c)

7) [MG Chemicals 832HD-25ML](https://www.mgchemicals.com/downloads/tds/tds-832hd-2parts.pdf)
* Volume Resistivity: 1.4 x 1013 Ω·cm
* [Purchase - Digikey](https://www.digikey.com/en/products/detail/mg-chemicals/832HD-25ML/9658007?gclsrc=aw.ds&&utm_adgroup=&utm_source=google&utm_medium=cpc&utm_campaign=PMax%20Shopping_Product_High%20ROAS%20Categories&utm_term=&utm_content=&utm_id=go_cmp-20222717502_adg-_ad-__dev-c_ext-_prd-9658007_sig-CjwKCAiA5pq-BhBuEiwAvkzVZUcw2KJ-IR-dKto0MrshHS521JZ1PElweJQJ6NGseZ_YN7NelR7xAhoC2o0QAvD_BwE&gad_source=1&gbraid=0AAAAADrbLlg9R3YgIPICGNOqe2O5BFy8x&gclid=CjwKCAiA5pq-BhBuEiwAvkzVZUcw2KJ-IR-dKto0MrshHS521JZ1PElweJQJ6NGseZ_YN7NelR7xAhoC2o0QAvD_BwE)


## Epoxy Degasser

1) [1.5 Gallon Vacuum Chamber 3.5CFM Single Stage Pump Degassing Chamber Kit](https://www.vevor.com/vacuum-pump-c_11109/1-5-gallon-vacuum-chamber-3-5cfm-single-stage-pump-degassing-chamber-kit-p_010838830210?adp=gmc&utm_source=google&utm_medium=cpc&utm_id=21387046045&ad_group=166590768907&ad_id=702764145994&utm_term=&gad_source=4&gbraid=0AAAAACq8bLU8abmevVKs_kiU1s7kdmr-4&gclid=CjwKCAiAw5W-BhAhEiwApv4goPb6qM5FDWeUN8u7ZiwCaWDGu_8z-f6V2HLjtyExrKeVFEfVdd0sNBoCEWAQAvD_BwE)

2) [VIVOHOME 1.5 Gallon Vacuum Chamber with Pump, Stainless Steel Vacuum Degassing Chamber Kit with 3.5 CFM 1/4 HP Single Stage Vacuum Pump and Oil](https://www.amazon.com/VIVOHOME-Gallon-Chamber-Stainless-Degassing/dp/B091GQPVP9/ref=sr_1_2_sspa?crid=QPX49P0NYT9Y&dib=eyJ2IjoiMSJ9.g-VgaTX8DAMbnrIPQHHZ09Jv5DXjfytGYWYsR0zSMDjTh6Av0dN75e2fC3Rsv9MEyQy5DuMD2vG73PsvUSHYDd5u6YQZlmhuT5u--rLZkLTJpeyjcFbQIYm1CfXq8Md0lwBmXvbbHHHIPyOBTYJ5D4NkPyz_D8tlP7gvq1hMREL76yVjODMe9BztU-sbPgntkKejUcBFPBy6AXS_I7eB6MJeIU_-gq9ySbjsGuekOfE.audimm3jDjKUePJaIPsP23dUfYw3M7GF17HWC90cv9E&dib_tag=se&keywords=epoxy%2Bdegasser&qid=1741015604&sprefix=epoxy%2Bdegasser%2Caps%2C308&sr=8-2-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&th=1)

3) [BACOENG 2 Gallon Vacuum Chamber with 3.5 CFM Vacuum Pump, Acrylic Degassing Chamber Kit for Resin, Silicone and Epoxies](https://www.amazon.com/BACOENG-Chamber-Acrylic-Degassing-Silicone/dp/B0DCZ2NMGQ/ref=sxin_16_pa_sp_search_thematic_sspa?content-id=amzn1.sym.95e4d6bd-d93f-4ee1-9766-ff64f54d2f71%3Aamzn1.sym.95e4d6bd-d93f-4ee1-9766-ff64f54d2f71&crid=3F78HK6OD9ADI&cv_ct_cx=epoxy%2Bdegasser&keywords=epoxy%2Bdegasser&pd_rd_i=B0DCZ2NMGQ&pd_rd_r=5f7f43dd-9abc-482f-9b93-a63316f06263&pd_rd_w=uadZr&pd_rd_wg=RkwCm&pf_rd_p=95e4d6bd-d93f-4ee1-9766-ff64f54d2f71&pf_rd_r=JXB5T96M0GA9RX3SDMGV&qid=1741015062&sbo=RZvfv%2F%2FHxDF%2BO5021pAnSA%3D%3D&sprefix=epoxy%2Bdegasse%2Caps%2C141&sr=1-4-6024b2a3-78e4-4fed-8fed-e1613be3bcce-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9zZWFyY2hfdGhlbWF0aWM&th=1)
