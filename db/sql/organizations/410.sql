
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
      'Novant Health-GoHealth Urgent Care',
      '7811 North Point Blvd
Winston-Salem, NC 27106',
      'Winston-Salem',
      'NC',
      'Drop off or pick up locally',
      'unsure',
      '36.1502788',
      '-80.2784083'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Novant Health-GoHealth Urgent Care'
        AND o.latitude = '36.1502788'
        AND o.longitude = '-80.2784083'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Novant Health-GoHealth Urgent Care'
        AND o.latitude = '36.1502788'
        AND o.longitude = '-80.2784083'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Novant Health-GoHealth Urgent Care'
        AND o.latitude = '36.1502788'
        AND o.longitude = '-80.2784083'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Novant Health-GoHealth Urgent Care'
        AND o.latitude = '36.1502788'
        AND o.longitude = '-80.2784083'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Novant Health-GoHealth Urgent Care'
        AND o.latitude = '36.1502788'
        AND o.longitude = '-80.2784083'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Novant Health-GoHealth Urgent Care'
        AND o.latitude = '36.1502788'
        AND o.longitude = '-80.2784083'));

COMMIT;
