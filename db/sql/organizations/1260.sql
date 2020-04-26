
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
      'Sacramento Native American Health Center',
      '2020 J St
Sacramento, CA 95811',
      'Sacramento',
      'CA',
      'We have a receiving door in alley with a doorbell. ',
      'Yes',
      '38.5761075',
      '-121.4790916'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sacramento Native American Health Center'
        AND o.latitude = '38.5761075'
        AND o.longitude = '-121.4790916'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sacramento Native American Health Center'
        AND o.latitude = '38.5761075'
        AND o.longitude = '-121.4790916'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sacramento Native American Health Center'
        AND o.latitude = '38.5761075'
        AND o.longitude = '-121.4790916'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sacramento Native American Health Center'
        AND o.latitude = '38.5761075'
        AND o.longitude = '-121.4790916'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sacramento Native American Health Center'
        AND o.latitude = '38.5761075'
        AND o.longitude = '-121.4790916'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sacramento Native American Health Center'
        AND o.latitude = '38.5761075'
        AND o.longitude = '-121.4790916'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sacramento Native American Health Center'
        AND o.latitude = '38.5761075'
        AND o.longitude = '-121.4790916'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sacramento Native American Health Center'
        AND o.latitude = '38.5761075'
        AND o.longitude = '-121.4790916'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sacramento Native American Health Center'
        AND o.latitude = '38.5761075'
        AND o.longitude = '-121.4790916'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sacramento Native American Health Center'
        AND o.latitude = '38.5761075'
        AND o.longitude = '-121.4790916'));

COMMIT;
