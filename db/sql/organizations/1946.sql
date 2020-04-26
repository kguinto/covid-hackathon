
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
      'St Anthony Hospital ',
      '11600 W 2nd Pl
Lakewood, CO 80228',
      'Lakewood',
      'CO',
      '',
      'No',
      '39.7163135',
      '-105.1293633'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Anthony Hospital '
        AND o.latitude = '39.7163135'
        AND o.longitude = '-105.1293633'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Anthony Hospital '
        AND o.latitude = '39.7163135'
        AND o.longitude = '-105.1293633'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Anthony Hospital '
        AND o.latitude = '39.7163135'
        AND o.longitude = '-105.1293633'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Anthony Hospital '
        AND o.latitude = '39.7163135'
        AND o.longitude = '-105.1293633'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Anthony Hospital '
        AND o.latitude = '39.7163135'
        AND o.longitude = '-105.1293633'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Anthony Hospital '
        AND o.latitude = '39.7163135'
        AND o.longitude = '-105.1293633'));

COMMIT;
