
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
      'Saint John Vianney Center',
      '151 Woodbine Rd
Downingtown, PA 19335',
      'Downingtown ',
      'PA',
      'Call for instructions 610-518-2000',
      'Yes',
      '40.0119964',
      '-75.6833269'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint John Vianney Center'
        AND o.latitude = '40.0119964'
        AND o.longitude = '-75.6833269'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint John Vianney Center'
        AND o.latitude = '40.0119964'
        AND o.longitude = '-75.6833269'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint John Vianney Center'
        AND o.latitude = '40.0119964'
        AND o.longitude = '-75.6833269'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint John Vianney Center'
        AND o.latitude = '40.0119964'
        AND o.longitude = '-75.6833269'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint John Vianney Center'
        AND o.latitude = '40.0119964'
        AND o.longitude = '-75.6833269'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint John Vianney Center'
        AND o.latitude = '40.0119964'
        AND o.longitude = '-75.6833269'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint John Vianney Center'
        AND o.latitude = '40.0119964'
        AND o.longitude = '-75.6833269'));

COMMIT;
