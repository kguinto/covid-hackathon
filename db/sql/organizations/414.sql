
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
      'First Med Urgent Care',
      '4510 NW 39th St
Oklahoma City, OK 73122',
      'Oklahoma City',
      'OK',
      'Mail or pick up',
      'unsure',
      '35.5108518',
      '-97.6023992'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'First Med Urgent Care'
        AND o.latitude = '35.5108518'
        AND o.longitude = '-97.6023992'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'First Med Urgent Care'
        AND o.latitude = '35.5108518'
        AND o.longitude = '-97.6023992'));

COMMIT;
