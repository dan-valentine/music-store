Drop Table order_items;
Drop Table orders;
Drop Table customers;
Drop Table products;
drop table product_subtype;
drop Table product_type;

CREATE TABLE product_type (
    type_id serial primary key,
    type varchar(30)
);


CREATE TABLE product_subtype (
    subtype_id serial primary key,
    type_id int references product_type,
    subtype varchar(30)
);

CREATE TABLE products (
    product_id serial primary key,
    type_id int references product_type,
    subtype_id int REFERENCES product_subtype,
    description varchar(180),
    price numeric(10,2),
    image text
);

insert into product_type
(
    type
) values (
    'Guitars'
);

insert into product_subtype
(
    type_id,
    subtype
) VALUES (
    1, 'Electric'
);

insert into products
(
    type_id,
    subtype_id,
    description,
    price,
    image
) VALUES (
    1,
    1,
    'PRS John Mayer Silver Sky Electric Guitar',
    2299.23,
    'http://media.guitarcenter.com/is/image/MMGS7/John-Mayer-Silver-Sky-Electric-Guitar-Frost/L18249000002000-00-220x220.jpg'
),(
    1,
    1,
    'Epiphone Limited Edition Les Paul Traditional PRO Electric Guitar',
    499.00,
    'http://media.guitarcenter.com/is/image/MMGS7/Limited-Edition-Les-Paul-Traditional-PRO-Electric-Guitar-Wine-Red/423561000002000-00-220x220.jpg'
),(
    1,
    1,
    'Fender Standard Stratocaster Electric Guitar with Maple Fretboard',
    599.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Standard-Stratocaster-Electric-Guitar-with-Maple-Fretboard-Brown-Sunburst-Gloss-Maple-Fretboard/H76526000008001-00-220x220.jpg'
),(
    1,
    1,
    'Epiphone Limited Edition ES-335 PRO Electric Guitar',
    459.00,
    'http://media.guitarcenter.com/is/image/MMGS7/Limited-Edition-ES-335-PRO-Electric-Guitar-Vintage-Sunburst/H79035000002000-00-220x220.jpg'
),(
    1,
    1,
    'Fender Standard Telecaster Electric Guitar',
    599.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Standard-Telecaster-Electric-Guitar-Butterscotch-Blonde/H76527000009000-00-220x220.jpg'
),(
    1,
    1,
    'Fender Special Edition Standard Stratocaster Electric Guitar',
    599.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Special-Edition-Standard-Stratocaster-Electric-Guitar-Black/H64303000001000-00-220x220.jpg'
),(
    1,
    1,
    'Epiphone Limited Edition Les Paul Traditional PRO-II Electric Guitar',
    499.00,
    'http://media.guitarcenter.com/is/image/MMGS7/Limited-Edition-Les-Paul-Traditional-PRO-II-Electric-Guitar-Ocean-Blue-Burst/J40313000005000-00-220x220.jpg'
),(
    1,
    1,
    'Gibson 2017 Les Paul Standard T Electric Guitar',
    2519.00,
    'http://media.guitarcenter.com/is/image/MMGS7/2017-Les-Paul-Standard-T-Electric-Guitar-Heritage-Cherry-Sunburst/J45014000001000-00-220x220.jpg'
),(
    1,
    1,
    'Squier Bullet Stratocaster SSS Electric Guitar with Tremolo',
    149.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Bullet-Stratocaster-SSS-Electric-Guitar-with-Tremolo-Sea-Foam-Green/J16391000002000-00-220x220.jpg'
),(
    1,
    1,
    'Epiphone Les Paul Special II Plus Limited Edition Electric Guitar',
    179.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Les-Paul-Special-II-Plus-Limited-Edition-Electric-Guitar-Transparent-Black/430855000011000-00-220x220.jpg'
),(
    1,
    1,
    'Fender American Professional Stratocaster Maple Fingerboard Electric Guitar',
    1399.99,
    'http://media.guitarcenter.com/is/image/MMGS7/American-Professional-Stratocaster-Maple-Fingerboard-Electric-Guitar-Natural/J46217000007000-00-220x220.jpg'
),(
    1,
    1,
    'Epiphone Limited Edition SG Special-I Electric Guitar',
    159.00,
    'http://media.guitarcenter.com/is/image/MMGS7/Limited-Edition-SG-Special-I-Electric-Guitar-Cherry/J38676000003000-00-220x220.jpg'
),(
    1,
    1,
    'Squier FSR Bullet Telecaster Rosewood Fingerboard',
    179.99,
    'http://media.guitarcenter.com/is/image/MMGS7/FSR-Bullet-Telecaster-Rosewood-Fingerboard-Surf-Green/J49222000001000-00-220x220.jpg'
),(
    1,
    1,
    'Epiphone Les Paul Custom PRO Electric Guitar',
    599.00,
    'http://media.guitarcenter.com/is/image/MMGS7/Les-Paul-Custom-PRO-Electric-Guitar-Alpine-White/H79039000002000-00-220x220.jpg'
),(
    1,
    1,
    'Fender American Professional Stratocaster Rosewood Fingerboard Electric Guitar',
    1449.99,
    'http://media.guitarcenter.com/is/image/MMGS7/American-Professional-Stratocaster-Rosewood-Fingerboard-Electric-Guitar-Candy-Apple-Red/J46191000007000-00-220x220.jpg'
),(
    1,
    1,
    'Fender Jimi Hendrix Monterey Stratocaster Electric Guitar',
    899.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Jimi-Hendrix-Monterey-Stratocaster-Electric-Guitar-Custom-Graphic/K35840000001000-00-220x220.jpg'
),(
    1,
    1,
    'Gibson Les Paul Tribute 2018 - Solid Body Electric Guitar',
    1149.00,
    'http://media.guitarcenter.com/is/image/MMGS7/Les-Paul-Tribute-2018--Solid-Body-Electric-Guitar-Satin-Gold-Vintage-White-Pearl-Pickguard/K35721000002001-00-220x220.jpg'
),(
    1,
    1,
    'Fender American Professional Telecaster Maple Fingerboard Electric Guitar',
    1399.99,
    'http://media.guitarcenter.com/is/image/MMGS7/American-Professional-Telecaster-Maple-Fingerboard-Electric-Guitar-Candy-Apple-Red/J46479000007000-00-220x220.jpg'
),(
    1,
    1,
    'Squier Deluxe Strat Electric Guitar',
    299.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Deluxe-Strat-Electric-Guitar-Daphne-Blue/517231000265000-00-220x220.jpg'
),(
    1,
    1,
    'Gibson 2017 Les Paul Classic T Electric Guitar',
    1799.00,
    'http://media.guitarcenter.com/is/image/MMGS7/2017-Les-Paul-Classic-T-Electric-Guitar-Heritage-Cherry-Sunburst/J45008000002000-00-220x220.jpg'
),(
    1,
    1,
    'Fender Special Edition HH Maple Fingerboard Standard Telecaster',
    599.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Special-Edition-HH-Maple-Fingerboard-Standard-Telecaster-Sea-Foam-Pearl/J37951000001000-00-220x220.jpg'
),(
    1,
    1,
    'Fender American Elite Telecaster Maple Fingerboard Electric Guitar',
    1899.99,
    'http://media.guitarcenter.com/is/image/MMGS7/American-Elite-Telecaster-Maple-Fingerboard-Electric-Guitar-Champagne/J30082000007000-00-220x220.jpg'
),(
    1,
    1,
    'Fender EOB Stratocaster Electric Guitar',
    1099.99,
    'http://media.guitarcenter.com/is/image/MMGS7/EOB-Stratocaster-Electric-Guitar-Olympic-White/K35831000001000-00-220x220.jpg'
),(
    1,
    1,
    'PRS CE 24 Electric Guitar',
    1999.00,
    'http://media.guitarcenter.com/is/image/MMGS7/CE-24-Electric-Guitar-Trampas-Green/J30024000005000-00-220x220.jpg'
),(
    1,
    1,
    'Ibanez RGA series RGAR42MFMT Electric Guitar',
    499.99,
    'http://media.guitarcenter.com/is/image/MMGS7/RGA-series-RGAR42MFMT-Electric-Guitar-Flat-Dragon-Eye-Burst/J55980000002000-00-220x220.jpg'
),(
    1,
    1,
    'Squier Bullet HSS Stratocaster Electric Guitar',
    149.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Bullet-HSS-Stratocaster-Electric-Guitar-Black-Metallic/H99380000003000-00-220x220.jpg'
),(
    1,
    1,
    'PRS SE Custom 24 Electric Guitar',
    779.00,
    'http://media.guitarcenter.com/is/image/MMGS7/SE-Custom-24-Electric-Guitar-Fire-Red-Burst/J46382000005000-00-220x220.jpg'
),(
    1,
    1,
    'Epiphone Limited Edition Les Paul Custom PRO Electric Guitar',
    649.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Limited-Edition-Les-Paul-Custom-PRO-Electric-Guitar-Silver-Burst/H79044000001000-00-220x220.jpg'
),(
    1,
    1,
    'Fender American Professional Telecaster Rosewood Fingerboard Electric Guitar',
    1449.99,
    'http://media.guitarcenter.com/is/image/MMGS7/American-Professional-Telecaster-Rosewood-Fingerboard-Electric-Guitar-Transparent-Crimson/J46521000004000-00-220x220.jpg'
),(
    1,
    1,
    'Epiphone Limited Edition Les Paul Special-I Electric Guitar',
    149.00,
    'http://media.guitarcenter.com/is/image/MMGS7/Limited-Edition-Les-Paul-Special-I-Electric-Guitar-Worn-Black/H71861000002000-00-220x220.jpg'
);

insert into product_subtype
(
    type_id,
    subtype
) VALUES (
    1, 'Acoustic'
);

insert into products
(
    type_id,
    subtype_id,
    description,
    price,
    image
) VALUES (
    1,
    2,
    'Rogue Starter Acoustic Guitar',
    45.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Starter-Acoustic-Guitar-Matte-Natural/519266000049000-00-220x220.jpg'
),(
    1,
    2,
    'Rogue RA-090 Dreadnought Acoustic Guitar',
    49.99,
    'http://media.guitarcenter.com/is/image/MMGS7/RA-090-Dreadnought-Acoustic-Guitar-Sunburst/423794000027000-00-220x220.jpg'
),(
    1,
    2,
    'Yamaha F335 Acoustic Guitar',
    119.99,
    'http://media.guitarcenter.com/is/image/MMGS7/F335-Acoustic-Guitar-Black/512940000001000-00-220x220.jpg'
),(
    1,
    2,
    'Yamaha GigMaker Acoustic Guitar Pack',
    169.99,
    'http://media.guitarcenter.com/is/image/MMGS7/GigMaker-Acoustic-Guitar-Pack-Natural/519040000010000-00-220x220.jpg'
),(
    1,
    2,
    'Taylor GS Mini Mahogany Acoustic Guitar',
    449.99,
    'http://media.guitarcenter.com/is/image/MMGS7/GS-Mini-Mahogany-Acoustic-Guitar-Mahogany/H79318000001000-00-220x220.jpg'
),(
    1,
    2,
    'Disney/Pixar Coco x Cordoba Acoustic Guitar',
    169.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Coco-x-Cordoba-Acoustic-Guitar-Natural/J52582000001000-00-220x220.jpg'
),(
    1,
    2,
    'Taylor Big Baby Taylor Acoustic Guitar',
    399.00,
    'http://media.guitarcenter.com/is/image/MMGS7/Big-Baby-Taylor-Acoustic-Guitar-Natural/H79608000001000-00-220x220.jpg'
),(
    1,
    2,
    'Fender FA-100 Acoustic Guitar with Gig Bag v2',
    119.99,
    'http://media.guitarcenter.com/is/image/MMGS7/FA-100-Acoustic-Guitar-with-Gig-Bag-v2/K40813000001000-00-220x220.jpg'
),(
    1,
    2,
    'Rogue RG-624 Left-Handed Dreadnought Acoustic Guitar',
    69.99,
    'http://media.guitarcenter.com/is/image/MMGS7/RG-624-Left-Handed-Dreadnought-Acoustic-Guitar-Natural/519322000010000-00-220x220.jpg'
),(
    1,
    2,
    'Epiphone PR-150 Acoustic Guitar',
    169.99,
    'http://media.guitarcenter.com/is/image/MMGS7/PR-150-Acoustic-Guitar-Natural/512457000010000-00-220x220.jpg'
),(
    1,
    2,
    'Martin Custom D Classic Mahogany Dreadnought Acoustic Guitar',
    1199.00,
    'http://media.guitarcenter.com/is/image/MMGS7/Custom-D-Classic-Mahogany-Dreadnought-Acoustic-Guitar/514700000000000-00-220x220.jpg'
),(
    1,
    2,
    'Taylor Baby Taylor Mahogany Acoustic Guitar',
    329.00,
    'http://media.guitarcenter.com/is/image/MMGS7/Baby-Taylor-Mahogany-Acoustic-Guitar-Natural/H79543000001000-00-220x220.jpg'
),(
    1,
    2,
    'Yamaha FG830 Dreadnought Acoustic Guitar',
    299.99,
    'http://media.guitarcenter.com/is/image/MMGS7/FG830-Dreadnought-Acoustic-Guitar-Tobacco-Sunburst/J33498000003000-00-220x220.jpg'
),(
    1,
    2,
    'Seagull The Original S6 Acoustic Guitar',
    399.99,
    'http://media.guitarcenter.com/is/image/MMGS7/The-Original-S6-Acoustic-Guitar-Natural/512120000010000-00-220x220.jpg'
),(
    1,
    2,
    'Rogue RD80 Dreadnought Acoustic Guitar',
    89.99,
    'http://media.guitarcenter.com/is/image/MMGS7/RD80-Dreadnought-Acoustic-Guitar/H80040000000000-00-220x220.jpg'
),(
    1,
    2,
    'Martin 15 Series 000-15M Auditorium Acoustic Guitar',
    1299.00,
    'http://media.guitarcenter.com/is/image/MMGS7/15-Series-000-15M-Auditorium-Acoustic-Guitar/423480000000000-00-220x220.jpg'
),(
    1,
    2,
    'Yamaha FS800 Folk Acoustic Guitar',
    199.99,
    'http://media.guitarcenter.com/is/image/MMGS7/FS800-Folk-Acoustic-Guitar-Vintage-Tint/J32979000003000-00-220x220.jpg'
),(
    1,
    2,
    'Yamaha FG800 Folk Acoustic Guitar',
    199.99,
    'http://media.guitarcenter.com/is/image/MMGS7/FG800-Folk-Acoustic-Guitar-Sand-Burst/J29941000002000-00-220x220.jpg'
),(
    1,
    2,
    'Epiphone PRO-1 Acoustic Guitar',
    119.00,
    'http://media.guitarcenter.com/is/image/MMGS7/PRO-1-Acoustic-Guitar-Transparent-Blue/J09893000001000-00-220x220.jpg'
),(
    1,
    2,
    'Disney/Pixar Coco x Cordoba Mini Spruce Acoustic Guitar',
    129.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Coco-x-Cordoba-Mini-Spruce-Acoustic-Guitar-Natural/J52581000001000-00-220x220.jpg'
),(
    1,
    2,
    'Angelico Premier Gramercy Acoustic-Electric Guitar',
    499.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Premier-Gramercy-Acoustic-Electric-Guitar-Sunburst/J50053000002000-00-220x220.jpg'
),(
    1,
    2,
    'Martin StreetMaster 000-15M Acoustic Guitar',
    1399.00,
    'http://media.guitarcenter.com/is/image/MMGS7/StreetMaster-000-15M-Acoustic-Guitar-Natural/K36091000001000-00-220x220.jpg'
),(
    1,
    2,
    'Yamaha JR1 Mini Folk Guitar',
    134.99,
    'http://media.guitarcenter.com/is/image/MMGS7/JR1-Mini-Folk-Guitar/510692000000000-00-220x220.jpg'
),(
    1,
    2,
    'Martin Custom MMV Dreadnought Acoustic Guitar',
    1749.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Custom-MMV-Dreadnought-Acoustic-Guitar-Natural/512096000010000-00-220x220.jpg'
),(
    1,
    2,
    'Luna Guitars Gypsy 12-String Dreadnought Mahogany Acoustic Guitar',
    199.00,
    'http://media.guitarcenter.com/is/image/MMGS7/Gypsy-12-String-Dreadnought-Mahogany-Acoustic-Guitar-Satin-Natural/J46181000001000-00-220x220.jpg'
),(
    1,
    2,
    'Martin Performing Artist Series Custom GPCPA4 Grand Performance',
    1899.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Performing-Artist-Series-Custom-GPCPA4-Grand-Performance-Acoustic-Electric-Guitar-Natural/H83182000001000-00-220x220.jpg'
),(
    1,
    2,
    'Taylor Baby Taylor Acoustic Guitar',
    329.00,
    'http://media.guitarcenter.com/is/image/MMGS7/Baby-Taylor-Acoustic-Guitar-Natural/H79613000001000-00-220x220.jpg'
),(
    1,
    2,
    'Seagull S6 Entourage Acoustic Guitar',
    349.00,
    'http://media.guitarcenter.com/is/image/MMGS7/S6-Entourage-Acoustic-Guitar-Rustic-Burst/512366000096000-00-220x220.jpg'
),(
    1,
    2,
    'Disney/Pixar Coco x Cordoba Mini Mahogany Acoustic Guitar',
    129.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Coco-x-Cordoba-Mini-Mahogany-Acoustic-Guitar-Natural/J52579000001000-00-220x220.jpg'
),(
    1,
    2,
    'Rogue RA-090 Dreadnought 12-String Acoustic Guitar Regular',
    149.99,
    'http://media.guitarcenter.com/is/image/MMGS7/RA-090-Dreadnought-12-String-Acoustic-Guitar-Regular-Natural/J46360000001000-00-220x220.jpg'
);

insert into product_subtype
(
    type_id,
    subtype
) VALUES (
    1, 'Acoustic-Electric'
);

insert into products
(
    type_id,
    subtype_id,
    description,
    price,
    image
) VALUES (
    1,
    3,
    'Fender FA-135CE Cutaway Concert Acoustic-Electric Guitar',
    179.99,
    'http://media.guitarcenter.com/is/image/MMGS7/FA-135CE-Cutaway-Concert-Acoustic-Electric-Guitar-Natural/H70301000001000-00-220x220.jpg'
),(
    1,
    3,
    'Yamaha NTX500 Acoustic-Electric Guitar',
    449.99,
    'http://media.guitarcenter.com/is/image/MMGS7/NTX500-Acoustic-Electric-Guitar-Natural/K47821000001000-00-220x220.jpg'
),(
    1,
    3,
    'Fender California Series T-Bucket 300CE Cutaway Dreadnought Acoustic-Electric',
    299.99,
    'http://media.guitarcenter.com/is/image/MMGS7/California-Series-T-Bucket-300CE-Cutaway-Dreadnought-Acoustic-Electric-Guitar-3-Color-Sunburst/J42514000002000-00-220x220.jpg'
),(
    1,
    3,
    'Takamine G Series GD30CE-12 Dreadnought 12-String Acoustic-Electric Guitar',
    499.99,
    'http://media.guitarcenter.com/is/image/MMGS7/G-Series-GD30CE-12-Dreadnought-12-String-Acoustic-Electric-Guitar-Black/H99532000002000-00-220x220.jpg'
),(
    1,
    3,
    'Taylor 224ce-K Deluxe Grand Auditorium Acoustic-Electric Guitar',
    1499.00,
    'http://media.guitarcenter.com/is/image/MMGS7/224ce-K-Deluxe-Grand-Auditorium-Acoustic-Electric-Guitar-Shaded-Edge-Burst/J45043000001000-00-220x220.jpg'
),(
    1,
    3,
    'Taylor K14ce V-Class Builders Edition Grand Auditorium Acoustic-Electric',
    4999.00,
    'http://media.guitarcenter.com/is/image/MMGS7/K14ce-V-Class-Builders-Edition-Grand-Auditorium-Acoustic-Electric-Guitar-Kona-Burst/K82381000001000-00-220x220.jpg'
),(
    1,
    3,
    'Breedlove Discovery Concert CE 6-String Mahogany Acoustic-Electric Guitar',
    399.00,
    'http://media.guitarcenter.com/is/image/MMGS7/Discovery-Concert-CE-6-String-Mahogany-Acoustic-Electric-Guitar-Natural/J25657000001000-00-220x220.jpg'
),(
    1,
    3,
    'Fender FA-135CE Acoustic-Electric Guitar',
    179.99,
    'http://media.guitarcenter.com/is/image/MMGS7/FA-135CE-Acoustic-Electric-Guitar-Natural/K37012000002000-00-220x220.jpg'
),(
    1,
    3,
    'Rogue RA-090 Concert Cutaway Acoustic-Electric Guitar',
    89.99,
    'http://media.guitarcenter.com/is/image/MMGS7/RA-090-Concert-Cutaway-Acoustic-Electric-Guitar-Blue-Burst/J17594000003000-00-220x220.jpg'
),(
    1,
    3,
    'Yamaha APX500III Thinline Cutaway Acoustic-Electric Guitar',
    299.99,
    'http://media.guitarcenter.com/is/image/MMGS7/APX500III-Thinline-Cutaway-Acoustic-Electric-Guitar-Vintage-Sunburst/J12426000005000-00-220x220.jpg'
),(
    1,
    3,
    'Martin X Series Custom X-000CE Auditorium Acoustic-Electric Guitar',
    749.00,
    'http://media.guitarcenter.com/is/image/MMGS7/X-Series-Custom-X-000CE-Auditorium-Acoustic-Electric-Guitar-Black/J28726000001000-00-220x220.jpg'
),(
    1,
    3,
    'Epiphone EJ-200SCE Acoustic-Electric Guitar',
    459.00,
    'http://media.guitarcenter.com/is/image/MMGS7/EJ-200SCE-Acoustic-Electric-Guitar-Black/518652000001000-00-220x220.jpg'
),(
    1,
    3,
    'Martin Ed Sheeran 3 Divide Signature Edition Little Martin Acoustic-Electric',
    549.00,
    'http://media.guitarcenter.com/is/image/MMGS7/Ed-Sheeran-3-Divide-Signature-Edition-Little-Martin-Acoustic-Electric-Guitar-Natural/J55766000001000-00-220x220.jpg'
),(
    1,
    3,
    'Taylor 200 Series 214ce DLX Grand Auditorium Acoustic-Electric Guitar',
    1299.00,
    'http://media.guitarcenter.com/is/image/MMGS7/200-Series-214ce-DLX-Grand-Auditorium-Acoustic-Electric-Guitar-Natural/J20638000003000-00-220x220.jpg'
),(
    1,
    3,
    'Taylor GS Mini Series GS Mini-e Koa Acoustic-Electric Guitar',
    799.00,
    'http://media.guitarcenter.com/is/image/MMGS7/GS-Mini-Series-GS-Mini-e-Koa-Acoustic-Electric-Guitar-Natural/K37115000001000-00-220x220.jpg'
),(
    1,
    3,
    'Taylor GS Mini Series GS Mini-e Walnut Acoustic-Electric Guitar',
    599.00,
    'http://media.guitarcenter.com/is/image/MMGS7/GS-Mini-Series-GS-Mini-e-Walnut-Acoustic-Electric-Guitar-Natural/K40578000001000-00-220x220.jpg'
),(
    1,
    3,
    'Ibanez V70CE Acoustic-Electric Guitar',
    199.99,
    'http://media.guitarcenter.com/is/image/MMGS7/V70CE-Acoustic-Electric-Guitar-Transparent-Blue/519468000012000-00-220x220.jpg'
),(
    1,
    3,
    'Martin LX1E Little Martin Acoustic-Electric Guitar',
    439.00,
    'http://media.guitarcenter.com/is/image/MMGS7/LX1E-Little-Martin-Acoustic-Electric-Guitar-Natural/J29802000001000-00-220x220.jpg'
),(
    1,
    3,
    'Martin Road Series DRS1 Dreadnought Acoustic-Electric Guitar',
    759.00,
    'http://media.guitarcenter.com/is/image/MMGS7/Road-Series-DRS1-Dreadnought-Acoustic-Electric-Guitar-Natural/J28915000001000-00-220x220.jpg'
),(
    1,
    3,
    'Mitchell MX420 Grand Auditorium Acoustic-Electric Guitar',
    349.99,
    'http://media.guitarcenter.com/is/image/MMGS7/MX420-Grand-Auditorium-Acoustic-Electric-Guitar-Midnight-Black-Finish/J17025000002000-00-220x220.jpg'
),(
    1,
    3,
    'Mitchell O120CESB Acoustic Electric Guitar',
    149.99,
    'http://media.guitarcenter.com/is/image/MMGS7/O120CESB-Acoustic-Electric-Guitar-3-Color-Sunburst/J51473000001000-00-220x220.jpg'
),(
    1,
    3,
    'Martin Performing Artist Series Custom DCPA4 Dreadnought Acoustic-Electric',
    1899.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Performing-Artist-Series-Custom-DCPA4-Dreadnought-Acoustic-Electric-Guitar-Rosewood/H83186000001000-00-220x220.jpg'
),(
    1,
    3,
    'Mitchell O120PKE Acoustic-Electric Guitar Pack',
    199.99,
    'http://media.guitarcenter.com/is/image/MMGS7/O120PKE-Acoustic-Electric-Guitar-Pack-Gloss-Natural/K46653000001000-00-220x220.jpg'
),(
    1,
    3,
    'Yamaha APXT2 3/4 Thinline Acoustic-Electric Cutaway Guitar',
    199.99,
    'http://media.guitarcenter.com/is/image/MMGS7/APXT2-3-4-Thinline-Acoustic-Electric-Cutaway-Guitar-Black/H94648000002000-00-220x220.jpg'
),(
    1,
    3,
    'Taylor 100 Series 2017 114ce Grand Auditorium Acoustic-Electric Guitar',
    849.00,
    'http://media.guitarcenter.com/is/image/MMGS7/100-Series-2017-114ce-Grand-Auditorium-Acoustic-Electric-Guitar-Natural/J49823000001000-00-220x220.jpg'
),(
    1,
    3,
    'Epiphone Masterbilt DR-500MCE Acoustic-Electric Guitar',
    679.00,
    'http://media.guitarcenter.com/is/image/MMGS7/Masterbilt-DR-500MCE-Acoustic-Electric-Guitar-Vintage-Sunburst/423559000001000-00-220x220.jpg'
),(
    1,
    3,
    'Ibanez AEG20II Flamed Sycamore Top Cutaway Acoustic-Electric Guitar',
    399.99,
    'http://media.guitarcenter.com/is/image/MMGS7/AEG20II-Flamed-Sycamore-Top-Cutaway-Acoustic-Electric-Guitar-Vintage-Violin/H90910000002000-00-220x220.jpg'
),(
    1,
    3,
    'Breedlove Pursuit Exotic Concert Bourbon CE Myrtlewood - Myrtlewood Acoustic-Eletric',
    699.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Pursuit-Exotic-Concert-Bourbon-CE-Myrtlewood--Myrtlewood-Acoustic-Electric-Guitar-Bourbon-Sunset-Burst/K35888000001000-00-220x220.jpg'
),(
    1,
    3,
    'Takamine EF341SC Legacy Series Acoustic-Electric Guitar',
    1299.99,
    'http://media.guitarcenter.com/is/image/MMGS7/EF341SC-Legacy-Series-Acoustic-Electric-Guitar-Black/516445000001000-00-220x220.jpg'
),(
    1,
    3,
    'Rogue RA-090 Dreadnought Cutaway Acoustic-Electric Guitar',
    89.99,
    'http://media.guitarcenter.com/is/image/MMGS7/RA-090-Dreadnought-Cutaway-Acoustic-Electric-Guitar-Natural/J17593000002000-00-220x220.jpg'
);

Insert into product_type(
    TYPE
) VALUES
(
    'Bass'
);

INSERT INTO product_subtype(
    type_id,
    subtype
) Values (
    2,
    'Electric'
);

Insert into products
(
    type_id,
    subtype_id,
    description,
    price,
    image
) VALUES (
    2,
    4,
    'Ibanez GSR200 4-String Electric Bass',
    199.99,
    'http://media.guitarcenter.com/is/image/MMGS7/GSR200-4-String-Electric-Bass-Flat-Walnut-Rosewood-fretboard/J03684000001001-00-220x220.jpg'
),(
    2,
    4,
    'Rogue SX100B Series II Electric Bass Guitar',
    119.99,
    'http://media.guitarcenter.com/is/image/MMGS7/SX100B-Series-II-Electric-Bass-Guitar-Black/H11150000002000-00-220x220.jpg'
),(
    2,
    4,
    'Dean Edge 09 Bass and Amp Pack',
    229.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Edge-09-Bass-and-Amp-Pack-Red/512175000005000-00-220x220.jpg'
),(
    2,
    4,
    'Hofner Ignition Series Vintage Violin Bass',
    349.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Ignition-Series-Vintage-Violin-Bass-Sunburst/511788000003000-00-220x220.jpg'
),(
    2,
    4,
    'Yamaha TRBX174EW Mango Wood 4-String Electric Bass Guitar',
    224.99,
    'http://media.guitarcenter.com/is/image/MMGS7/TRBX174EW-Mango-Wood-4-String-Electric-Bass-Guitar-Natural/J18947000001000-00-220x220.jpg'
),(
    2,
    4,
    'Squier Affinity Series Precision Bass PJ Rosewood Fingerboard',
    199.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Affinity-Series-Precision-Bass-PJ-Rosewood-Fingerboard-Black-Rosewood-Fingerboard/H96900000001001-00-220x220.jpg'
),(
    2,
    4,
    'Rogue LX200B Series III Electric Bass Guitar',
    149.99,
    'http://media.guitarcenter.com/is/image/MMGS7/LX200B-Series-III-Electric-Bass-Guitar-Pearl-Black/H11151000002000-00-220x220.jpg'
),(
    2,
    4,
    'Squier Affinity Series Bronco Bass Guitar',
    149.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Affinity-Series-Bronco-Bass-Guitar-Black/510426000001000-00-220x220.jpg'
),(
    2,
    4,
    'Ibanez IJXB150B Jumpstart Bass Package',
    279.99,
    'http://media.guitarcenter.com/is/image/MMGS7/IJXB150B-Jumpstart-Bass-Package-Walnut-Sunburst/H86341000006000-00-220x220.jpg'
),(
    2,
    4,
    'Squier Vintage Modified Jaguar Bass Special SS (Short Scale)',
    199.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Vintage-Modified-Jaguar-Bass-Special-SS-Short-Scale-Rosewood-Fretboard-Candy-Apple-Red/H72938000001002-00-220x220.jpg'
),(
    2,
    4,
    'Rogue VB100 Violin Bass Guitar ',
    229.99,
    'http://media.guitarcenter.com/is/image/MMGS7/VB100-Violin-Bass-Guitar-Vintage-Sunburst/430598000015000-00-220x220.jpg'
),(
    2,
    4,
    'Sterling by Music Man S.U.B. Ray4 Electric Bass Guitar',
    299.99,
    'http://media.guitarcenter.com/is/image/MMGS7/S.U.B.-Ray4-Electric-Bass-Guitar-Mint-Green/H82042000004000-00-220x220.jpg'
),(
    2,
    4,
    'Ibanez GSR200 4-String Electric Bass',
    199.99,
    'http://media.guitarcenter.com/is/image/MMGS7/GSR200-4-String-Electric-Bass-Transparent-Red/519524000016000-00-220x220.jpg'
),(
    2,
    4,
    'Rogue LX205B 5-String Series III Electric Bass Guitar',
    159.99,
    'http://media.guitarcenter.com/is/image/MMGS7/LX205B-5-String-Series-III-Electric-Bass-Guitar-Pearl-Black/H11149000004000-00-220x220.jpg'
),(
    2,
    4,
    'Squier Vintage Modified Jazz Bass 70s',
    349.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Vintage-Modified-Jazz-Bass-70s-Natural/H99641000002000-00-220x220.jpg'
),(
    2,
    4,
    'Fender Special Edition Deluxe PJ Bass',
    799.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Special-Edition-Deluxe-PJ-Bass-Olympic-White/H96715000004000-00-220x220.jpg'
),(
    2,
    4,
    'Squier Affinity Series PJ Bass Pack with Fender Rumble 15W 1x8 Bass Combo Amp',
    299.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Affinity-Series-PJ-Bass-Pack-with-Fender-Rumble-15W-1x8-Bass-Combo-Amp-Brown-Sunburst/J73166000002000-00-220x220.jpg'
),(
    2,
    4,
    'Ibanez GSRM20B 4-String Electric Bass Guitar',
    179.99,
    'http://media.guitarcenter.com/is/image/MMGS7/GSRM20B-4-String-Electric-Bass-Guitar-Natural/J18888000001000-00-220x220.jpg'
),(
    2,
    4,
    'Squier Affinity Series Jazz Bass Pack with Fender Rumble 15W Bass Combo Amp',
    299.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Affinity-Series-Jazz-Bass-Pack-with-Fender-Rumble-15W-Bass-Combo-Amp-Brown-Sunburst/J21346000002000-00-220x220.jpg'
),(
    2,
    4,
    'Dean Custom Zone 4-String Bass Guitar',
    229.00,
    'http://media.guitarcenter.com/is/image/MMGS7/Custom-Zone-4-String-Bass-Guitar-Nuclear-Green/512934000506000-00-220x220.jpg'
),(
    2,
    4,
    'Ibanez SR500PB 4-String Electric Bass Guitar',
    499.99,
    'http://media.guitarcenter.com/is/image/MMGS7/SR500PB-4-String-Electric-Bass-Guitar-Light-Violin-Sunburst/H02992000002000-00-220x220.jpg'
),(
    2,
    4,
    'Ibanez GSR205 5-String Electric Bass',
    249.99,
    'http://media.guitarcenter.com/is/image/MMGS7/GSR205-5-String-Electric-Bass-Flat-Walnut-Rosewood-fretboard/J03679000001001-00-220x220.jpg'
),(
    2,
    4,
    'Squier Vintage Modified Jazz Bass Left Handed',
    299.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Vintage-Modified-Jazz-Bass-Left-Handed-3-Color-Sunburst/H99643000001000-00-220x220.jpg'
),(
    2,
    4,
    'Fender Justin Meldal-Johnsen Road Worn Mustang Electric Bass',
    999.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Justin-Meldal-Johnsen-Road-Worn-Mustang-Electric-Bass-Faded-Daphne-Blue/K36098000001000-00-220x220.jpg'
),(
    2,
    4,
    'Rogue LX200BL Left-Handed Series III Electric Bass Guitar',
    159.99,
    'http://media.guitarcenter.com/is/image/MMGS7/LX200BL-Left-Handed-Series-III-Electric-Bass-Guitar-Pearl-Black/H11148000001000-00-220x220.jpg'
),(
    2,
    4,
    'Ibanez GSR200SM 4-String Electric Bass Guitar',
    249.99,
    'http://media.guitarcenter.com/is/image/MMGS7/GSR200SM-4-String-Electric-Bass-Guitar-Natural-Gray-Burst/J12092000001000-00-220x220.jpg'
),(
    2,
    4,
    'Squier Vintage Modified Fretless Jazz Bass',
    299.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Vintage-Modified-Fretless-Jazz-Bass-3-Color-Sunburst/H99638000001000-00-220x220.jpg'
),(
    2,
    4,
    'Washburn Taurus T24 Neck-Thru Electric Bass Guitar',
    499.00,
    'http://media.guitarcenter.com/is/image/MMGS7/Taurus-T24-Neck-Thru-Electric-Bass-Guitar-Natural-Mahogany/514509000897000-00-220x220.jpg'
),(
    2,
    4,
    'Dean Edge 09 Left-Handed Electric Bass Guitar',
    165.12,
    'http://media.guitarcenter.com/is/image/MMGS7/Edge-09-Left-Handed-Electric-Bass-Guitar-Black/512906000001000-00-220x220.jpg'
),(
    2,
    4,
    'Squier Affinity Series Jazz Bass Electric Bass Guitar',
    199.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Affinity-Series-Jazz-Bass-Electric-Bass-Guitar-Brown-Sunburst/H77431000001000-00-220x220.jpg'
);

INSERT INTO product_subtype(
    type_id,
    subtype
) Values (
    2,
    'Acoustic'
);

Insert into products
(
    type_id,
    subtype_id,
    description,
    price,
    image
) VALUES (
    2,
    5,
    'Ibanez AEB5E Acoustic-Electric Bass',
    249.99,
    'http://media.guitarcenter.com/is/image/MMGS7/AEB5E-Acoustic-Electric-Bass-Black/620445000001000-00-220x220.jpg'
),(
    2,
    5,
    'Dean EAB Acoustic-Electric Bass',
    165.90,
    'http://media.guitarcenter.com/is/image/MMGS7/EAB-Acoustic-Electric-Bass-Satin-Natural/519943000091000-00-220x220.jpg'
),(
    2,
    5,
    'Ibanez AEB10E Acoustic-Electric Bass Guitar with Onboard Tuner',
    399.99,
    'http://media.guitarcenter.com/is/image/MMGS7/AEB10E-Acoustic-Electric-Bass-Guitar-with-Onboard-Tuner-Dark-Violin-Sunburst/519995000297000-00-220x220.jpg'
),(
    2,
    5,
    'Taylor GS Mini-e Acoustic-Electric Bass Regular',
    699,
    'http://media.guitarcenter.com/is/image/MMGS7/GS-Mini-e-Acoustic-Electric-Bass-Regular-Natural/J50386000001000-00-220x220.jpg'
),(
    2,
    5,
    'Fender T-Bucket Grand Concert Acoustic-Electric Bass',
    399.99,
    'http://media.guitarcenter.com/is/image/MMGS7/T-Bucket-Grand-Concert-Acoustic-Electric-Bass-3-Color-Sunburst/H92980000001000-00-220x220.jpg'
),(
    2,
    5,
    'Dean EAB Fretless Acoustic-Electric Bass',
    205.91,
    'http://media.guitarcenter.com/is/image/MMGS7/EAB-Fretless-Acoustic-Electric-Bass-Classic-Black/515949000001000-00-220x220.jpg'
),(
    2,
    5,
    'Ibanez AEB20E Acoustic-Electric Bass Guitar ',
    399.99,
    'http://media.guitarcenter.com/is/image/MMGS7/AEB20E-Acoustic-Electric-Bass-Guitar-Gloss-Vintage-Violin/J12296000001000-00-220x220.jpg'
),(
    2,
    5,
    'Dean EABC 5-String Cutaway Acoustic-Electric Bass',
    221.91,
    'http://media.guitarcenter.com/is/image/MMGS7/EABC-5-String-Cutaway-Acoustic-Electric-Bass/511938000000000-00-220x220.jpg'
),(
    2,
    5,
    'Kala Exotic Mahogany U-Bass Ukulele Bass Fretted',
    399.00,
    'http://media.guitarcenter.com/is/image/MMGS7/Exotic-Mahogany-U-Bass-Ukulele-Bass-Fretted-Natural/J46922000001000-00-220x220.jpg'
),(
    2,
    5,
    'Alvarez Artist Series ABT60 Baritone Guitar',
    399.00,
    'http://media.guitarcenter.com/is/image/MMGS7/Artist-Series-ABT60-Baritone-Guitar-Natural/H78608000001000-00-220x220.jpg'
),(
    2,
    5,
    'Ibanez AVNB1FE Artwood Vintage Parlor Solid-Top Acoustic-Electric Bass',
    499.99,
    'http://media.guitarcenter.com/is/image/MMGS7/AVNB1FE-Artwood-Vintage-Parlor-Solid-Top-Acoustic-Electric-Bass-Open-Pore-Natural/K82305000001000-00-220x220.jpg'
),(
    2,
    5,
    'Dean Exotica Quilted Ash Acoustic-Electric Bass Guitar',
    429.00,
    'http://media.guitarcenter.com/is/image/MMGS7/Exotica-Quilted-Ash-Acoustic-Electric-Bass-Guitar-Gloss-Natural/H11356000001000-00-220x220.jpg'
),(
    2,
    5,
    'Fender CB-60SCE Acoustic-Electric Bass Guitar',
    299.99,
    'http://media.guitarcenter.com/is/image/MMGS7/CB-60SCE-Acoustic-Electric-Bass-Guitar-Black/J56481000001000-00-220x220.jpg'
),(
    2,
    5,
    'Michael Kelly Dragonfly 5-String Fretless Acoustic-Electric Bass',
    629.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Dragonfly-5-String-Fretless-Acoustic-Electric-Bass-Smoke-Burst/H91287000002000-00-220x220.jpg'
),(
    2,
    5,
    'Kala Hutch Hutchinson Signature Acoustic-Electric U-Bass',
    499.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Hutch-Hutchinson-Signature-Acoustic-Electric-U-Bass-Natural/H94660000001000-00-220x220.jpg'
),(
    2,
    5,
    'Alvarez Artist Series AB60CE Acoustic-Electric Bass Guitar',
    499.95,
    'http://media.guitarcenter.com/is/image/MMGS7/Artist-Series-AB60CE-Acoustic-Electric-Bass-Guitar-Natural/H78610000001000-00-220x220.jpg'
),(
    2,
    5,
    'Kala Exotic Mahogany Acoustic U-Bass',
    399.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Exotic-Mahogany-Acoustic-U-Bass-Natural/H94662000001000-00-220x220.jpg'
),(
    2,
    5,
    'Dean AXS Acoustic-Electric Bass',
    299.00,
    'http://media.guitarcenter.com/is/image/MMGS7/AXS-Acoustic-Electric-Bass-Gloss-Natural/J45423000001000-00-220x220.jpg'
),(
    2,
    5,
    'Dean EABC Cutaway Acoustic-Electric Bass',
    269.00,
    'http://media.guitarcenter.com/is/image/MMGS7/EABC-Cutaway-Acoustic-Electric-Bass/511937000000000-00-220x220.jpg'
),(
    2,
    5,
    'Martin Performing Artist Series BCPA4 4-String Acoustic-Electric ',
    1799.00,
    'http://media.guitarcenter.com/is/image/MMGS7/Performing-Artist-Series-BCPA4-4-String-Acoustic-Electric-Bass-Guitar-Natural/H92879000001000-00-220x220.jpg'
),(
    2,
    5,
    'Fender Kingman SCE Acoustic Electric Bass Guitar with Case',
    599.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Kingman-SCE-Acoustic-Electric-Bass-Guitar-with-Case-Natural/K46150000001000-00-220x220.jpg'
),(
    2,
    5,
    'Fender California Series Kingman SCE Cutaway Dreadnought Acoustic-Electric Bass',
    529.99,
    'http://media.guitarcenter.com/is/image/MMGS7/California-Series-Kingman-SCE-Cutaway-Dreadnought-Acoustic-Electric-Bass-Guitar-3-Color-Sunburst/J26795000001000-00-220x220.jpg'
),(
    2,
    5,
    'Ibanez AEB105E Acoustic-Electric 5-String Bass',
    399.99,
    'http://media.guitarcenter.com/is/image/MMGS7/AEB105E-Acoustic-Electric-5-String-Bass-Gloss-Natural/L00091000001000-00-220x220.jpg'
),(
    2,
    5,
    'Luna Guitars Tribal Short Scale Acoustic-Electric Bass',
    349.00,
    'http://media.guitarcenter.com/is/image/MMGS7/Tribal-Short-Scale-Acoustic-Electric-Bass/J05618000000000-00-220x220.jpg'
),(
    2,
    5,
    'Kala SUB Solid Body Electric U-Bass',
    459.99,
    'http://media.guitarcenter.com/is/image/MMGS7/SUB-Solid-Body-Electric-U-Bass-Satin-Black/J29060000001000-00-220x220.jpg'
),(
    2,
    5,
    'Ibanez PNB14E Parlor Acoustic-Electric Bass Guitar',
    249.99,
    'http://media.guitarcenter.com/is/image/MMGS7/PNB14E-Parlor-Acoustic-Electric-Bass-Guitar-Natural/K58564000001000-00-220x220.jpg'
),(
    2,
    5,
    'Breedlove Solo Jumbo Bass Acoustic-Electric Guitar',
    799.00,
    'http://media.guitarcenter.com/is/image/MMGS7/Solo-Jumbo-Bass-Acoustic-Electric-Guitar-Gloss-Natural/K82330000001000-00-220x220.jpg'
),(
    2,
    5,
    'Ovation Elite TX Mid Depth Acoustic-Electric Bass',
    799.00,
    'http://media.guitarcenter.com/is/image/MMGS7/Elite-TX-Mid-Depth-Acoustic-Electric-Bass-Black/423580000001000-00-220x220.jpg'
),(
    2,
    5,
    'Michael Kelly Dragonfly 5-String Acoustic-Electric Bass',
    629.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Dragonfly-5-String-Acoustic-Electric-Bass-Smoke-Burst/H91296000001000-00-220x220.jpg'
),(
    2,
    5,
    'Michael Kelly Dragonfly 4-String Acoustic-Electric Bass',
    599.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Dragonfly-4-String-Acoustic-Electric-Bass-Smoke-Burst/H91286000001000-00-220x220.jpg'
);

insert into product_subtype
(
    type_id,
    subtype
)
Values 
(
    2,
    'Electric Upright'
);

Insert into products
(
    type_id,
    subtype_id,
    description,
    price,
    image
) VALUES (
    2,
    6,
    'Dean Pace Contra Electric Upright Bass',
    699.00,
    'http://media.guitarcenter.com/is/image/MMGS7/Pace-Contra-Electric-Upright-Bass-Classic-Black/J07669000001000-00-220x220.jpg'
),(
    2,
    6,
    'Stagg Deluxe Electric Double Bass',
    779.00,
    'http://media.guitarcenter.com/is/image/MMGS7/Deluxe-Electric-Double-Bass-Black/J48155000001000-00-220x220.jpg'
),(
    2,
    6,
    'Stagg Electric Double Bass',
    699.00,
    'http://media.guitarcenter.com/is/image/MMGS7/Electric-Double-Bass-Violin-Brown/J48156000001000-00-220x220.jpg'
),(
    2,
    6,
    'NS Design NXTa Active Series 5-String Omni Bass B-G',
    1949.00,
    'http://media.guitarcenter.com/is/image/MMGS7/NXTa-Active-Series-5-String-Omni-Bass-B-G-Sunburst/J47183000001000-00-220x220.jpg'
),(
    2,
    6,
    'NS Design NXTa Active Series 4-String Upright Electric Double Bass',
    1729,
    'http://media.guitarcenter.com/is/image/MMGS7/NXTa-Active-Series-4-String-Upright-Electric-Double-Bass-in-Sunburst-Sunburst/J47307000001000-00-220x220.jpg'
),(
    2,
    6,
    'NS Design WAV Series 5-String Upright Electric Bass',
    1149,
    'http://media.guitarcenter.com/is/image/MMGS7/WAV-Series-5-String-Upright-Electric-Bass-Black/J49895000002000-00-220x220.jpg'
),(
    2,
    6,
    'NS Design WAV Series 4-String Upright Electric Bass',
    999,
    'http://media.guitarcenter.com/is/image/MMGS7/WAV-Series-4-String-Upright-Electric-Bass-Brilliant-White/J49894000004000-00-220x220.jpg'
),(
    2,
    6,
    'Palatino VE-550 Electric Upright Bass',
    839.99,
    'http://media.guitarcenter.com/is/image/MMGS7/VE-550-Electric-Upright-Bass-Sunburst/512015000056000-00-220x220.jpg'
),(
    2,
    6,
    'Bridge Cetus Series 4-String Electric Double Bass',
    3502,
    'http://media.guitarcenter.com/is/image/MMGS7/Cetus-Series-4-String-Electric-Double-Bass-White/J10047000002000-00-220x220.jpg'
),(
    2,
    6,
    'NS Design CR Series 4-String Electric Double Bass',
    3799,
    'http://media.guitarcenter.com/is/image/MMGS7/CR-Series-4-String-Electric-Double-Bass/514430000000000-00-220x220.jpg'
),(
    2,
    6,
    'Yamaha SVB-200SK Silent Upright Bass',
    3120,
    'http://media.guitarcenter.com/is/image/MMGS7/SVB-200SK-Silent-Upright-Bass/J04103000000000-00-220x220.jpg'
),(
    2,
    6,
    'BSX Bass Allegro 5-String Acoustic-Electric Upright Bass',
    2939,
    'http://media.guitarcenter.com/is/image/MMGS7/Allegro-5-String-Acoustic-Electric-Upright-Bass-Nutmeg/514337000203000-00-220x220.jpg'
),(
    2,
    6,
    'Kydd Basses 42 Long 5-String Upright Bass',
    1949.99,
    'http://media.guitarcenter.com/is/image/MMGS7/42-Long-5-String-Upright-Bass-Natural/516069000010000-00-220x220.jpg'
),(
    2,
    6,
    'BSX Bass Allegro Acoustic-Electric Upright Bass',
    2500,
    'http://media.guitarcenter.com/is/image/MMGS7/Allegro-Acoustic-Electric-Upright-Bass-Nutmeg/514336000203000-00-220x220.jpg'
),(
    2,
    6,
    'NS Design NXTa Active Series 5-String Omni Bass B-G',
    1949,
    'http://media.guitarcenter.com/is/image/MMGS7/NXTa-Active-Series-5-String-Omni-Bass-B-G-Black/J47185000001000-00-220x220.jpg'
),(
    2,
    6,
    'NS Design NXTa Active Series 5-String Omni Bass E-C',
    1949,
    'http://media.guitarcenter.com/is/image/MMGS7/NXTa-Active-Series-5-String-Omni-Bass-E-C-Sunburst/J47187000001000-00-220x220.jpg'
),(
    2,
    6,
    'NS Design NXTa Active Series 5-String Omni Bass E-C',
    1949,
    'http://media.guitarcenter.com/is/image/MMGS7/NXTa-Active-Series-5-String-Omni-Bass-E-C-Black/J47186000001000-00-220x220.jpg'
),(
    2,
    6,
    'NS Design NXTa Active Series 5-String Upright Electric Double Bass',
    1879,
    'http://media.guitarcenter.com/is/image/MMGS7/NXTa-Active-Series-5-String-Upright-Electric-Double-Bass-Sunburst/J47182000001000-00-220x220.jpg'
),(
    2,
    6,
    'NS Design NXTa Active Series 5-String Upright Electric Double Bass',
    1879,
    'http://media.guitarcenter.com/is/image/MMGS7/NXTa-Active-Series-5-String-Upright-Electric-Double-Bass-Black/J47179000001000-00-220x220.jpg'
),(
    2,
    6,
    'NS Design NXTa Active Series 4-String Omni Bass E-G',
    1849,
    'http://media.guitarcenter.com/is/image/MMGS7/NXTa-Active-Series-4-String-Omni-Bass-E-G-Black/J47184000001000-00-220x220.jpg'
),(
    2,
    6,
    'NS Design NXTa Active Series 4-String Omni Bass E-G',
    1849,
    'http://media.guitarcenter.com/is/image/MMGS7/NXTa-Active-Series-4-String-Omni-Bass-E-G-Sunburst/J47181000001000-00-220x220.jpg'
),(
    2,
    6,
    'Kydd Basses Big Kydd 5-String Upright Bass',
    1799.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Big-Kydd-5-String-Upright-Bass-Natural/516066000010000-00-220x220.jpg'
),(
    2,
    6,
    'Kydd Basses 42 Long Upright Bass',
    1799.99,
    'http://media.guitarcenter.com/is/image/MMGS7/42-Long-Upright-Bass-Natural/516067000010000-00-220x220.jpg'
),(
    2,
    6,
    'NS Design NXTa Active Series 4-String Upright Electric Double Bass',
    1729,
    'http://media.guitarcenter.com/is/image/MMGS7/NXTa-Active-Series-4-String-Upright-Electric-Double-Bass-Black/J47180000001000-00-220x220.jpg'
),(
    2,
    6,
    'Kydd Basses Big Kydd Upright Bass',
    1649.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Big-Kydd-Upright-Bass-Natural/516065000010000-00-220x220.jpg'
),(
    2,
    6,
    'Kydd Basses Carry-On 5-String Upright Bass',
    1649.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Carry-On-5-String-Upright-Bass-Natural/516064000010000-00-220x220.jpg'
),(
    2,
    6,
    'Kydd Basses Fernando Saunders 5-String Piccolo Upright Bass',
    1649.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Fernando-Saunders-5-String-Piccolo-Upright-Bass-Natural/516062000010000-00-220x220.jpg'
),(
    2,
    6,
    'Kydd Basses Fernando Saunders Piccolo Upright Bass',
    1499.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Fernando-Saunders-Piccolo-Upright-Bass-Natural/516061000010000-00-220x220.jpg'
),(
    2,
    6,
    'Kydd Basses Carry-On Upright Bass',
    1499.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Carry-On-Upright-Bass-Natural/516063000010000-00-220x220.jpg'
),(
    2,
    6,
    'Dean Pace Bass 4-String Electric Upright',
    539,
    'http://media.guitarcenter.com/is/image/MMGS7/Pace-Bass-4-String-Electric-Upright-Black/519948000001000-00-220x220.jpg'
);

insert into product_type
(
    type
) values (
    'Drums'
);

insert into product_subtype 
(
    type_id,
    subtype
) VALUES (
    3,
    'Acoustic'
);

Insert into products
(
    type_id,
    subtype_id,
    description,
    price,
    image
) VALUES (
    3,
    7,
    'Sound Percussion Labs Lil Kicker - 3 Piece Jr Drum Set with Throne',
    149.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Lil-Kicker--3-Piece-Jr-Drum-Set-with-Throne-Wine-Red/J08402000001000-00-220x220.jpg'
),(
    3,
    7,
    'Sound Percussion Labs Kicker Pro - 5 Piece Drum Set',
    299.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Kicker-Pro--5-Piece-Drum-Set-with-Stands-Cymbals-and-Throne-Silver-Metallic-Glitter/J08403000001000-00-220x220.jpg'
),(
    3,
    7,
    'Gretsch Drums Energy 5-Piece Drum Set Brushed Grey',
    749.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Energy-5-Piece-Drum-Set-Brushed-Grey-with-Hardware-and-Zildjian-Cymbals/J50061000000000-00-220x220.jpg'
),(
    3,
    7,
    'Sound Percussion Labs Kicker Pro 5-Piece Drum Set',
    299.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Kicker-Pro-5-Piece-Drum-Set-with-Stands-Cymbals-and-Throne-Black/J37894000001000-00-220x220.jpg'
),(
    3,
    7,
    'Sound Percussion Labs Street Bop Birch Ply 4-Piece Shell Pack',
    299.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Street-Bop-Birch-Ply-4-Piece-Shell-Pack-Silver-Metallic-Glitter/J11958000001000-00-220x220.jpg'
),(
    3,
    7,
    'Ludwig Junior Outfit Drum Set',
    299.00,
    'http://media.guitarcenter.com/is/image/MMGS7/Junior-Outfit-Drum-Set-Blue/447702000004000-00-220x220.jpg'
),(
    3,
    7,
    'Ludwig Breakbeats by Questlove 4-Piece Shell Pack',
    399.00,
    'http://media.guitarcenter.com/is/image/MMGS7/Breakbeats-by-Questlove-4-Piece-Shell-Pack-Azure-Sparkle/H91063000001000-00-220x220.jpg'
),(
    3,
    7,
    'Sound Percussion Labs Unity 5-Piece Drum Set',
    399.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Unity-5-Piece-Drum-Set-with-Hardware-Cymbals-and-Throne-Black/J08439000002000-00-220x220.jpg'
),(
    3,
    7,
    'PDP by DW Encore 5-Piece Drum Kit with Hardware and Cymbals',
    299.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Encore-5-Piece-Drum-Kit-with-Hardware-and-Cymbals-Ruby-Red/J74988000001000-00-220x220.jpg'
),(
    3,
    7,
    'PDP by DW Z5 5-Piece Shell Pack',
    249.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Z5-5-Piece-Shell-Pack-Carbon-Black/483477000000269-00-220x220.jpg'
),(
    3,
    7,
    'PDP by DW Double Drive 8-Piece Shell Pack',
    779.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Double-Drive-8-Piece-Shell-Pack-Gray-Metal/H73745000001000-00-220x220.jpg'
),(
    3,
    7,
    'Pearl Export New Fusion 5-Piece Drum Set with Hardware',
    649.00,
    'http://media.guitarcenter.com/is/image/MMGS7/Export-New-Fusion-5-Piece-Drum-Set-with-Hardware-Jet-Black/H94538000003000-00-220x220.jpg'
),(
    3,
    7,
    'Pearl Roadshow 4-Piece Jazz Drum Set',
    399,
    'http://media.guitarcenter.com/is/image/MMGS7/Roadshow-4-Piece-Jazz-Drum-Set-Charcoal-Metallic/J14668000001000-00-220x220.jpg'
),(
    3,
    7,
    'Pearl Roadshow 5-Piece New Fusion Drum Set',
    479.00,
    'http://media.guitarcenter.com/is/image/MMGS7/Roadshow-5-Piece-New-Fusion-Drum-Set-Jet-Black/J14674000002000-00-220x220.jpg'
),(
    3,
    7,
    'Gretsch Drums Energy 5-Piece Drum Set Blue Sparkle with Hardware',
    749.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Energy-5-Piece-Drum-Set-Blue-Sparkle-with-Hardware-and-Zildjian-Cymbals/J50001000000000-00-220x220.jpg'
),(
    3,
    7,
    'Sound Percussion Labs Unity Birch Series 5-Piece Complete Drum Set',
    499.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Unity-Birch-Series-5-Piece-Complete-Drum-Set-Black-Mist/J27526000001000-00-220x220.jpg'
),(
    3,
    7,
    'Gretsch Drums Catalina Maple 6-Piece Shell Pack with Free 8 in. Tom',
    999.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Catalina-Maple-6-Piece-Shell-Pack-with-Free-8-in.-Tom-Satin-Deep-Cherry-Burst/J03648000002000-00-220x220.jpg'
),(
    3,
    7,
    'Pearl Compact Traveler 2-Piece Drum Kit',
    219,
    'http://media.guitarcenter.com/is/image/MMGS7/Compact-Traveler-2-Piece-Drum-Kit/J72311000000000-00-220x220.jpg'
),(
    3,
    7,
    'DW Design Series Acrylic 5-Piece Shell Pack with Chrome Hardware',
    1499.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Design-Series-Acrylic-5-Piece-Shell-Pack-with-Chrome-Hardware-Clear/J13306000001000-00-220x220.jpg'
),(
    3,
    7,
    'Traps Drums A400 Portable Acoustic Drum Set',
    699.99,
    'http://media.guitarcenter.com/is/image/MMGS7/A400-Portable-Acoustic-Drum-Set/491112000000000-00-220x220.jpg'
),(
    3,
    7,
    'Ddrum D1 5-Piece Junior Drum Set with Cymbals',
    249,
    'http://media.guitarcenter.com/is/image/MMGS7/D1-5-Piece-Junior-Drum-Set-with-Cymbals-Police-Blue/H68700000002000-00-220x220.jpg'
),(
    3,
    7,
    'PDP by DW Z5 Complete Drum Set with Hardware and Cymbals',
    399.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Z5-Complete-Drum-Set-with-Hardware-and-Cymbals-Carbon-Black/H78107000001000-00-220x220.jpg'
),(
    3,
    7,
    'Yamaha Stage Custom Birch 5-Piece Shell Pack with 22" Bass Drum',
    649.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Stage-Custom-Birch-5-Piece-Shell-Pack-with-22-Bass-Drum-Raven-Black/J07117000005000-00-220x220.jpg'
),(
    3,
    7,
    'DW Design Series Frequent Flyer Kit',
    1299.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Design-Series-Frequent-Flyer-Kit-Cherry-Stain/J06636000004000-00-220x220.jpg'
),(
    3,
    7,
    'Pearl Roadshow 5-Piece Fusion Drum Set',
    479.00,
    'http://media.guitarcenter.com/is/image/MMGS7/Roadshow-5-Piece-Fusion-Drum-Set-Wine-Red/J14673000003000-00-220x220.jpg'
),(
    3,
    7,
    'Gretsch Drums Catalina Maple 4-Piece Shell Pack with 22" Bass Drum',
    779.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Catalina-Maple-4-Piece-Shell-Pack-with-22-Bass-Drum-Walnut-Glaze/J03649000002000-00-220x220.jpg'
),(
    3,
    7,
    'DW Performance Series 4-Piece Shell Pack',
    1831.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Performance-Series-4-Piece-Shell-Pack-Tobacco-Stain-Oil-with-Chrome-Hardware/H89937000004000-00-220x220.jpg'
),(
    3,
    7,
    'Sonor Martini 4-Piece Shell Pack',
    399,
    'http://media.guitarcenter.com/is/image/MMGS7/Martini-4-Piece-Shell-Pack-Champagne-Galaxy-Sparkle/J06569000002000-00-220x220.jpg'
),(
    3,
    7,
    'Ludwig Centennial Zep 4-Piece Shell Pack',
    1199.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Centennial-Zep-4-Piece-Shell-Pack-Natural/H89631000004000-00-220x220.jpg'
),(
    3,
    7,
    'PDP by DW Concept Maple Exotic Series 5-Piece Shell Pack',
    899.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Concept-Maple-Exotic-Series-5-Piece-Shell-Pack-Walnut-to-Charcoal-Burst/J41513000001000-00-220x220.jpg'
);

insert into product_subtype 
(
    type_id,
    subtype
) VALUES (
    3,
    'Electronic'
);

Insert into products
(
    type_id,
    subtype_id,
    description,
    price,
    image
) VALUES (
    3,
    8,
    'Alesis Nitro 8-Piece Electronic Drum Kit',
    299,
    'http://media.guitarcenter.com/is/image/MMGS7/Nitro-8-Piece-Electronic-Drum-Kit/J41480000000000-00-220x220.jpg'
),(
    3,
    8,
    'Simmons SD550 Electronic Drum Set with Mesh Pads',
    549.99,
    'http://media.guitarcenter.com/is/image/MMGS7/SD550-Electronic-Drum-Set-with-Mesh-Pads/J52908000000000-00-220x220.jpg'
),(
    3,
    8,
    'Alesis Nitro Electronic Drum Kit Complete Bundle',
    369,
    'http://media.guitarcenter.com/is/image/MMGS7/Nitro-Electronic-Drum-Kit-Complete-Bundle/K48027000000000-00-220x220.jpg'
),(
    3,
    8,
    'Simmons SD350 Electronic Drum Kit with Mesh Pads',
    399.99,
    'http://media.guitarcenter.com/is/image/MMGS7/SD350-Electronic-Drum-Kit-with-Mesh-Pads/J52903000000000-00-220x220.jpg'
),(
    3,
    8,
    'Alesis Command X 9-Piece Electronic Drum Kit',
    799.99,
    'http://media.guitarcenter.com/is/image/MMGS7/Command-X-9-Piece-Electronic-Drum-Kit/J42786000000000-00-220x220.jpg'
),(
    3,
    8,
    'Roland TD-11KV-S V-Compact Series Electronic Drum Kit',
    1299.99,
    'http://media.guitarcenter.com/is/image/MMGS7/TD-11KV-S-V-Compact-Series-Electronic-Drum-Kit/H82858000000000-00-220x220.jpg'
),(
    3,
    8,
    'Alesis Crimson II 5-Piece Electronic Drum Kit',
    1099,
    'http://media.guitarcenter.com/is/image/MMGS7/Crimson-II-5-Piece-Electronic-Drum-Kit/J53585000000000-00-220x220.jpg'
),(
    3,
    8,
    'Alesis Surge Mesh-Head Electronic Drum Set',
    499,
    'http://media.guitarcenter.com/is/image/MMGS7/Surge-Mesh-Head-Electronic-Drum-Set/L00571000000000-00-220x220.jpg'
),(
    3,
    8,
    'Roland TD-11K-S V-Compact Series Electronic V-Drum Kit',
    799.99,
    'http://media.guitarcenter.com/is/image/MMGS7/TD-11K-S-V-Compact-Series-Electronic-V-Drum-Kit/H82854000000000-00-220x220.jpg'
),(
    3,
    8,
    'Roland TD-25KV V-Tour Drum Kit',
    2499.99,
    'http://media.guitarcenter.com/is/image/MMGS7/TD-25KV-V-Tour-Drum-Kit/J22650000000000-00-220x220.jpg'
),(
    3,
    8,
    'Alesis Nitro Electronic Drum Kit and Simmons DA50 Monitor',
    499,
    'http://media.guitarcenter.com/is/image/MMGS7/Nitro-Electronic-Drum-Kit-and-Simmons-DA50-Monitor/K46596000000000-00-220x220.jpg'
),(
    3,
    8,
    'Alesis Compact 4 Electronic Drum Kit',
    79,
    'http://media.guitarcenter.com/is/image/MMGS7/Compact-4-Electronic-Drum-Kit/J44579000000000-00-220x220.jpg'
),(
    3,
    8,
    'Alesis Strike Pro Kit',
    2299,
    'http://media.guitarcenter.com/is/image/MMGS7/Strike-Pro-Kit-Red-Sparkle/J45810000001000-00-220x220.jpg'
),(
    3,
    8,
    'Yamaha DTX430K Electronic Drum SET',
    449.99,
    'http://media.guitarcenter.com/is/image/MMGS7/DTX430K-Electronic-Drum-Set/H87627000000000-00-220x220.jpg'
),(
    3,
    8,
    'Roland TD-25K V-Tour Drum Kit',
    1999.99,
    'http://media.guitarcenter.com/is/image/MMGS7/TD-25K-V-Tour-Drum-Kit/J22611000000000-00-220x220.jpg'
),(
    3,
    8,
    'Simmons SD350 Complete Electronic Drum Set with Mesh Pads',
    399.99,
    'http://media.guitarcenter.com/is/image/MMGS7/SD350-Complete-Electronic-Drum-Set-with-Mesh-Pads/K76945000000000-00-220x220.jpg'
),(
    3,
    8,
    'Alesis Command Mesh Kit',
    699,
    'http://media.guitarcenter.com/is/image/MMGS7/Command-Mesh-Kit/L00576000000000-00-220x220.jpg'
),(
    3,
    8,
    'Yamaha DTX532K Electronic Drum Set',
    999.99,
    'http://media.guitarcenter.com/is/image/MMGS7/DTX532K-Electronic-Drum-Set/H98031000000000-00-220x220.jpg'
),(
    3,
    8,
    'Yamaha DD-65 Digital Drums',
    219.99,
    'http://media.guitarcenter.com/is/image/MMGS7/DD-65-Digital-Drums/500564000000000-00-220x220.jpg'
),(
    3,
    8,
    'Simmons SD350 Electronic Drum Kit With Mesh Pads and Simmons DA50 monitor',
    549.99,
    'http://media.guitarcenter.com/is/image/MMGS7/SD350-Electronic-Drum-Kit-With-Mesh-Pads-and-Simmons-DA50-monitor/K77056000000000-00-220x220.jpg'
),(
    3,
    8,
    'Yamaha DD-75 8-Pad Portable Digital Drum Set',
    219.99,
    'http://media.guitarcenter.com/is/image/MMGS7/DD-75-8-Pad-Portable-Digital-Drum-Set/K46185000000000-00-220x220.jpg'
),(
    3,
    8,
    'Roland TD-30K V-Pro Series Electronic Drum Kit',
    3999,
    'http://media.guitarcenter.com/is/image/MMGS7/TD-30K-V-Pro-Series-Electronic-Drum-Kit/H81431000000000-00-220x220.jpg'
),(
    3,
    8,
    'Roland TD-50KV Electronic Drum Kit',
    7499.99,
    'http://media.guitarcenter.com/is/image/MMGS7/TD-50KV-Electronic-Drum-Kit/J45177000000000-00-220x220.jpg'
),(
    3,
    8,
    'Alesis Strike Kit',
    1699,
    'http://media.guitarcenter.com/is/image/MMGS7/Strike-Kit/J45426000000000-00-220x220.jpg'
),(
    3,
    8,
    'Yamaha DTX522K Electronic Drum Set',
    799.99,
    'http://media.guitarcenter.com/is/image/MMGS7/DTX522K-Electronic-Drum-Set/H98030000000000-00-220x220.jpg'
),(
    3,
    8,
    'Alesis Nitro Electronic Drum Kit Starter Bundle',
    319,
    'http://media.guitarcenter.com/is/image/MMGS7/Nitro-Electronic-Drum-Kit-Starter-Bundle/K48032000000000-00-220x220.jpg'
),(
    3,
    8,
    'Roland V-Drums TD-4KP Portable Electronic Drum Set',
    649.99,
    'http://media.guitarcenter.com/is/image/MMGS7/V-Drums-TD-4KP-Portable-Electronic-Drum-Set/H95651000000000-00-220x220.jpg'
),(
    3,
    8,
    'Roland TD-1K Electronic Drumset',
    499.99,
    'http://media.guitarcenter.com/is/image/MMGS7/TD-1K-Electronic-Drumset/J13899000000000-00-220x220.jpg'
),(
    3,
    8,
    'Alesis Crimson Electronic 5-Piece Drum Kit with Mesh Heads',
    999,
    'http://media.guitarcenter.com/is/image/MMGS7/Crimson-Electronic-5-Piece-Drum-Kit-with-Mesh-Heads/J25753000000000-00-220x220.jpg'
),(
    3,
    8,
    'Roland TD-50K Electronic Drum Kit',
    4799.99,
    'http://media.guitarcenter.com/is/image/MMGS7/TD-50K-Electronic-Drum-Kit/J45176000000000-00-220x220.jpg'
); 

create table customers (
    customer_id serial primary key,
    auth_id text,
    user_name varchar(180)
);

create table orders (
    order_id serial primary key,
    customer_id INTEGER,
    date_created date
);

create table order_items (
    order_item_id serial primary key,
    order_id integer REFERENCES orders,
    product_id INTEGER REFERENCES products
);