
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
      'Northern Nevada Medical Center',
      '2375 E. Prater Way
Sparks, NV 89431',
      'Sparks',
      'NV',
      'Mail to: Alexa Parker, Emergency Dept.- NNMC, 2375 E Prater Way, Sparks, NV, 89431',
      'Yes',
      '39.5411157',
      '-119.6973597'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northern Nevada Medical Center'
        AND o.latitude = '39.5411157'
        AND o.longitude = '-119.6973597'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical Masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northern Nevada Medical Center'
        AND o.latitude = '39.5411157'
        AND o.longitude = '-119.6973597'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable Booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northern Nevada Medical Center'
        AND o.latitude = '39.5411157'
        AND o.longitude = '-119.6973597'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety Goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northern Nevada Medical Center'
        AND o.latitude = '39.5411157'
        AND o.longitude = '-119.6973597'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northern Nevada Medical Center'
        AND o.latitude = '39.5411157'
        AND o.longitude = '-119.6973597'));

COMMIT;
