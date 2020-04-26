
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
      'Gold Cross Ambulance',
      '1055 Wittmann Dr
Menasha, WI 54952',
      'Menasha',
      'WI',
      'Mail to ATTN: John Kuehl, 1055 Wittmann Dr, Menasha, WI 54952; or call dispatch center at 920-727-3034 for in-person drop off at Wittmann Dr. headquarters. ',
      'Yes',
      '44.2266004',
      '-88.4221368'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gold Cross Ambulance'
        AND o.latitude = '44.2266004'
        AND o.longitude = '-88.4221368'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gold Cross Ambulance'
        AND o.latitude = '44.2266004'
        AND o.longitude = '-88.4221368'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gold Cross Ambulance'
        AND o.latitude = '44.2266004'
        AND o.longitude = '-88.4221368'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gold Cross Ambulance'
        AND o.latitude = '44.2266004'
        AND o.longitude = '-88.4221368'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gold Cross Ambulance'
        AND o.latitude = '44.2266004'
        AND o.longitude = '-88.4221368'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gold Cross Ambulance'
        AND o.latitude = '44.2266004'
        AND o.longitude = '-88.4221368'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gold Cross Ambulance'
        AND o.latitude = '44.2266004'
        AND o.longitude = '-88.4221368'));

COMMIT;
