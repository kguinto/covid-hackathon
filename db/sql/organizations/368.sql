
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
      'G.V. Sonny Montgomery VA Medical Center',
      '1500 E Woodrow Wilson Ave
Jackson, MS 39216',
      'Jackson',
      'MS',
      'ATTN: ENT CLINIC',
      'Yes',
      '32.3278243',
      '-90.1674953'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'G.V. Sonny Montgomery VA Medical Center'
        AND o.latitude = '32.3278243'
        AND o.longitude = '-90.1674953'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'G.V. Sonny Montgomery VA Medical Center'
        AND o.latitude = '32.3278243'
        AND o.longitude = '-90.1674953'));

COMMIT;
