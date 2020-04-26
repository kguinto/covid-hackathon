
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
      'Hartford Hospital ',
      '85 Seymour St
Hartford, CT 06106',
      'Hartford ',
      'CT',
      'Main Lobby',
      '',
      '41.7544767',
      '-72.6820975'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hartford Hospital '
        AND o.latitude = '41.7544767'
        AND o.longitude = '-72.6820975'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hartford Hospital '
        AND o.latitude = '41.7544767'
        AND o.longitude = '-72.6820975'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hartford Hospital '
        AND o.latitude = '41.7544767'
        AND o.longitude = '-72.6820975'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hartford Hospital '
        AND o.latitude = '41.7544767'
        AND o.longitude = '-72.6820975'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hartford Hospital '
        AND o.latitude = '41.7544767'
        AND o.longitude = '-72.6820975'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hartford Hospital '
        AND o.latitude = '41.7544767'
        AND o.longitude = '-72.6820975'));

COMMIT;
