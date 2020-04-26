
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
      'Trinitas Regional Medical Center',
      '225 Williamson St
Elizabeth, NJ 07202',
      'Elizabeth',
      'NJ',
      '225 Williamson St.',
      'Yes',
      '40.6597934',
      '-74.2141265'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Trinitas Regional Medical Center'
        AND o.latitude = '40.6597934'
        AND o.longitude = '-74.2141265'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Trinitas Regional Medical Center'
        AND o.latitude = '40.6597934'
        AND o.longitude = '-74.2141265'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Trinitas Regional Medical Center'
        AND o.latitude = '40.6597934'
        AND o.longitude = '-74.2141265'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Trinitas Regional Medical Center'
        AND o.latitude = '40.6597934'
        AND o.longitude = '-74.2141265'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Trinitas Regional Medical Center'
        AND o.latitude = '40.6597934'
        AND o.longitude = '-74.2141265'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Trinitas Regional Medical Center'
        AND o.latitude = '40.6597934'
        AND o.longitude = '-74.2141265'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Trinitas Regional Medical Center'
        AND o.latitude = '40.6597934'
        AND o.longitude = '-74.2141265'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Trinitas Regional Medical Center'
        AND o.latitude = '40.6597934'
        AND o.longitude = '-74.2141265'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Trinitas Regional Medical Center'
        AND o.latitude = '40.6597934'
        AND o.longitude = '-74.2141265'));

COMMIT;
