
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
      'Chris Jensen Health and Rehab',
      '2501 Rice Lake Rd
Duluth, MN 55811',
      'Duluth',
      'MN',
      'Drop on loading dock',
      'No',
      '46.819007',
      '-92.126518'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chris Jensen Health and Rehab'
        AND o.latitude = '46.819007'
        AND o.longitude = '-92.126518'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chris Jensen Health and Rehab'
        AND o.latitude = '46.819007'
        AND o.longitude = '-92.126518'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chris Jensen Health and Rehab'
        AND o.latitude = '46.819007'
        AND o.longitude = '-92.126518'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chris Jensen Health and Rehab'
        AND o.latitude = '46.819007'
        AND o.longitude = '-92.126518'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chris Jensen Health and Rehab'
        AND o.latitude = '46.819007'
        AND o.longitude = '-92.126518'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chris Jensen Health and Rehab'
        AND o.latitude = '46.819007'
        AND o.longitude = '-92.126518'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chris Jensen Health and Rehab'
        AND o.latitude = '46.819007'
        AND o.longitude = '-92.126518'));

COMMIT;
