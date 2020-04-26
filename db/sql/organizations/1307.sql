
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
      'One Medical',
      '10250 Santa Monica Blvd #1280
Los Angeles, CA 90067',
      'Century City',
      'CA',
      'located in the Westfield Century City mall, use delivery loading docks. Attn: Michelle A.',
      'Yes',
      '34.0590031',
      '-118.418866'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '34.0590031'
        AND o.longitude = '-118.418866'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '34.0590031'
        AND o.longitude = '-118.418866'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '34.0590031'
        AND o.longitude = '-118.418866'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '34.0590031'
        AND o.longitude = '-118.418866'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '34.0590031'
        AND o.longitude = '-118.418866'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '34.0590031'
        AND o.longitude = '-118.418866'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '34.0590031'
        AND o.longitude = '-118.418866'));

COMMIT;
