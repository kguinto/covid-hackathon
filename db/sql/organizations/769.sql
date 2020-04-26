
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
      'Einstein Medical Center Elkins Park',
      '60 Township Line Road
Elkins Park, PA 19027',
      'Elkins Park',
      'PA',
      'Call 215-456-7200 or drop at Main Entrance, open 24/7

OR

Moss Rehab Main Campus',
      'Yes',
      '40.0724039',
      '-75.1052787'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Einstein Medical Center Elkins Park'
        AND o.latitude = '40.0724039'
        AND o.longitude = '-75.1052787'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Einstein Medical Center Elkins Park'
        AND o.latitude = '40.0724039'
        AND o.longitude = '-75.1052787'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Einstein Medical Center Elkins Park'
        AND o.latitude = '40.0724039'
        AND o.longitude = '-75.1052787'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Einstein Medical Center Elkins Park'
        AND o.latitude = '40.0724039'
        AND o.longitude = '-75.1052787'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Einstein Medical Center Elkins Park'
        AND o.latitude = '40.0724039'
        AND o.longitude = '-75.1052787'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Einstein Medical Center Elkins Park'
        AND o.latitude = '40.0724039'
        AND o.longitude = '-75.1052787'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Einstein Medical Center Elkins Park'
        AND o.latitude = '40.0724039'
        AND o.longitude = '-75.1052787'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Einstein Medical Center Elkins Park'
        AND o.latitude = '40.0724039'
        AND o.longitude = '-75.1052787'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Einstein Medical Center Elkins Park'
        AND o.latitude = '40.0724039'
        AND o.longitude = '-75.1052787'));

COMMIT;
