
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
      'Sutter Medical Center Sacramento ',
      'Email for local drop off sites',
      'Sacramento',
      'CA',
      'Email jengriffith.ppe@gmail.com',
      'Yes',
      '37.0321977',
      '-95.6160703'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sutter Medical Center Sacramento '
        AND o.latitude = '37.0321977'
        AND o.longitude = '-95.6160703'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sutter Medical Center Sacramento '
        AND o.latitude = '37.0321977'
        AND o.longitude = '-95.6160703'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sutter Medical Center Sacramento '
        AND o.latitude = '37.0321977'
        AND o.longitude = '-95.6160703'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sutter Medical Center Sacramento '
        AND o.latitude = '37.0321977'
        AND o.longitude = '-95.6160703'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sutter Medical Center Sacramento '
        AND o.latitude = '37.0321977'
        AND o.longitude = '-95.6160703'));

COMMIT;
