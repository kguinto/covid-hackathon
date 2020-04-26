
BEGIN;

INSERT INTO organizations
    (
      name,
      address,
      city,
      state,
      instructions,
      accepts_opened,
      latitude,
      longitude
    )
  VALUES
    (
      'Seashore Eye Associates O.D., PLLC',
      '1612 Doctors Cir
Wilmington, NC 28401',
      'WILMINGTON',
      'NC',
      'curbside procedure or leave by back door. ',
      'No',
      '34.2063255',
      '-77.9266098'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Seashore Eye Associates O.D., PLLC'
        AND o.latitude = '34.2063255'
        AND o.longitude = '-77.9266098'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Seashore Eye Associates O.D., PLLC'
        AND o.latitude = '34.2063255'
        AND o.longitude = '-77.9266098'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Seashore Eye Associates O.D., PLLC'
        AND o.latitude = '34.2063255'
        AND o.longitude = '-77.9266098'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Seashore Eye Associates O.D., PLLC'
        AND o.latitude = '34.2063255'
        AND o.longitude = '-77.9266098'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Seashore Eye Associates O.D., PLLC'
        AND o.latitude = '34.2063255'
        AND o.longitude = '-77.9266098'));

COMMIT;
