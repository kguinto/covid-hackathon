
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
      'Oklahoma City Veterans Affairs Healthcare Systems Medical Center',
      '921 NE 13th St
Oklahoma City, OK 73104',
      'Oklahoma City',
      'OK',
      'Oklahoma City',
      'Yes',
      '35.4829077',
      '-97.4963849'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Oklahoma City Veterans Affairs Healthcare Systems Medical Center'
        AND o.latitude = '35.4829077'
        AND o.longitude = '-97.4963849'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Oklahoma City Veterans Affairs Healthcare Systems Medical Center'
        AND o.latitude = '35.4829077'
        AND o.longitude = '-97.4963849'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Oklahoma City Veterans Affairs Healthcare Systems Medical Center'
        AND o.latitude = '35.4829077'
        AND o.longitude = '-97.4963849'));

COMMIT;
