
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
      'VNA Healthcare ',
      '400 N Highland Ave
Aurora, IL 60506',
      'Aurora',
      'IL',
      'Katie Darger ',
      '',
      '41.7658861',
      '-88.3297764'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'VNA Healthcare '
        AND o.latitude = '41.7658861'
        AND o.longitude = '-88.3297764'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'VNA Healthcare '
        AND o.latitude = '41.7658861'
        AND o.longitude = '-88.3297764'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'VNA Healthcare '
        AND o.latitude = '41.7658861'
        AND o.longitude = '-88.3297764'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'VNA Healthcare '
        AND o.latitude = '41.7658861'
        AND o.longitude = '-88.3297764'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'VNA Healthcare '
        AND o.latitude = '41.7658861'
        AND o.longitude = '-88.3297764'));

COMMIT;
