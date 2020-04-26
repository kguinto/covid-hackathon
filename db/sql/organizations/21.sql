
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
      'Ochsner Medical Center - Hancock',
      '429 Drinkwater Blvd 
Bay St Louis, MS 39520',
      'Bay St Louis',
      'MS',
      'TBD',
      'No',
      '30.3171242',
      '-89.3555637'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ochsner Medical Center - Hancock'
        AND o.latitude = '30.3171242'
        AND o.longitude = '-89.3555637'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ochsner Medical Center - Hancock'
        AND o.latitude = '30.3171242'
        AND o.longitude = '-89.3555637'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ochsner Medical Center - Hancock'
        AND o.latitude = '30.3171242'
        AND o.longitude = '-89.3555637'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ochsner Medical Center - Hancock'
        AND o.latitude = '30.3171242'
        AND o.longitude = '-89.3555637'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ochsner Medical Center - Hancock'
        AND o.latitude = '30.3171242'
        AND o.longitude = '-89.3555637'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ochsner Medical Center - Hancock'
        AND o.latitude = '30.3171242'
        AND o.longitude = '-89.3555637'));

COMMIT;
