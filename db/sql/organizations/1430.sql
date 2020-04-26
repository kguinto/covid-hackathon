
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
      'Chinatown Service Center',
      '767 N Hill St #200A
Los Angeles, CA 90012',
      'Los Angeles',
      'CA',
      '767 N Hill St Ste 200A',
      'No',
      '34.0626606',
      '-118.2400077'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chinatown Service Center'
        AND o.latitude = '34.0626606'
        AND o.longitude = '-118.2400077'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chinatown Service Center'
        AND o.latitude = '34.0626606'
        AND o.longitude = '-118.2400077'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chinatown Service Center'
        AND o.latitude = '34.0626606'
        AND o.longitude = '-118.2400077'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chinatown Service Center'
        AND o.latitude = '34.0626606'
        AND o.longitude = '-118.2400077'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chinatown Service Center'
        AND o.latitude = '34.0626606'
        AND o.longitude = '-118.2400077'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chinatown Service Center'
        AND o.latitude = '34.0626606'
        AND o.longitude = '-118.2400077'));

COMMIT;
