
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
      'Hollywood Presbyterian Medical Center',
      '1300 N Vermont Ave
Los Angeles, CA 90027',
      'Los Angeles',
      'CA',
      'Drop off at Fountain and Vermont Ave.',
      'Yes',
      '34.0963187',
      '-118.2903056'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hollywood Presbyterian Medical Center'
        AND o.latitude = '34.0963187'
        AND o.longitude = '-118.2903056'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hollywood Presbyterian Medical Center'
        AND o.latitude = '34.0963187'
        AND o.longitude = '-118.2903056'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hollywood Presbyterian Medical Center'
        AND o.latitude = '34.0963187'
        AND o.longitude = '-118.2903056'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hollywood Presbyterian Medical Center'
        AND o.latitude = '34.0963187'
        AND o.longitude = '-118.2903056'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hollywood Presbyterian Medical Center'
        AND o.latitude = '34.0963187'
        AND o.longitude = '-118.2903056'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hollywood Presbyterian Medical Center'
        AND o.latitude = '34.0963187'
        AND o.longitude = '-118.2903056'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hollywood Presbyterian Medical Center'
        AND o.latitude = '34.0963187'
        AND o.longitude = '-118.2903056'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hollywood Presbyterian Medical Center'
        AND o.latitude = '34.0963187'
        AND o.longitude = '-118.2903056'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hollywood Presbyterian Medical Center'
        AND o.latitude = '34.0963187'
        AND o.longitude = '-118.2903056'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hollywood Presbyterian Medical Center'
        AND o.latitude = '34.0963187'
        AND o.longitude = '-118.2903056'));

COMMIT;
