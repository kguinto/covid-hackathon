
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
      'Taos Urgent Care',
      '330 C Paseo Del Pueblo Sur
Taos, NM 87571',
      'Taos',
      'NM',
      'US Mail, UPS, Fed Ex',
      'Unsure',
      '36.4005624',
      '-105.5766119'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Taos Urgent Care'
        AND o.latitude = '36.4005624'
        AND o.longitude = '-105.5766119'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Taos Urgent Care'
        AND o.latitude = '36.4005624'
        AND o.longitude = '-105.5766119'));

COMMIT;
