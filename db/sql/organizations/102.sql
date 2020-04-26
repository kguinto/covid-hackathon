
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
      'California Rehabilitation Institute',
      '2070 Century Park E
Los Angeles, CA 90067',
      'Century City',
      'CA',
      'Lobby',
      'Yes',
      '34.0591737',
      '-118.411809'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'California Rehabilitation Institute'
        AND o.latitude = '34.0591737'
        AND o.longitude = '-118.411809'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'California Rehabilitation Institute'
        AND o.latitude = '34.0591737'
        AND o.longitude = '-118.411809'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'California Rehabilitation Institute'
        AND o.latitude = '34.0591737'
        AND o.longitude = '-118.411809'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'California Rehabilitation Institute'
        AND o.latitude = '34.0591737'
        AND o.longitude = '-118.411809'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'California Rehabilitation Institute'
        AND o.latitude = '34.0591737'
        AND o.longitude = '-118.411809'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'California Rehabilitation Institute'
        AND o.latitude = '34.0591737'
        AND o.longitude = '-118.411809'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'California Rehabilitation Institute'
        AND o.latitude = '34.0591737'
        AND o.longitude = '-118.411809'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'California Rehabilitation Institute'
        AND o.latitude = '34.0591737'
        AND o.longitude = '-118.411809'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'California Rehabilitation Institute'
        AND o.latitude = '34.0591737'
        AND o.longitude = '-118.411809'));

COMMIT;
