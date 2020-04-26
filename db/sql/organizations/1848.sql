
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
      'Living Life Home Care',
      '9220 Bass Lake Rd #215
New Hope, MN 55428',
      'New Hope',
      'MN',
      'Mailing Address ATTN: Matthew Krebs',
      'Yes',
      '45.0585866',
      '-93.3972734'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Living Life Home Care'
        AND o.latitude = '45.0585866'
        AND o.longitude = '-93.3972734'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Living Life Home Care'
        AND o.latitude = '45.0585866'
        AND o.longitude = '-93.3972734'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Living Life Home Care'
        AND o.latitude = '45.0585866'
        AND o.longitude = '-93.3972734'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Living Life Home Care'
        AND o.latitude = '45.0585866'
        AND o.longitude = '-93.3972734'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Living Life Home Care'
        AND o.latitude = '45.0585866'
        AND o.longitude = '-93.3972734'));

COMMIT;
