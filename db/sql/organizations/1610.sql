
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
      'Ventura County Medical Center',
      '300 Hillmont Ave
Ventura, CA 93003',
      'Ventura',
      'CA',
      'Central Supply Dock: ATTN Bob Tumpane ',
      'Yes',
      '34.2772969',
      '-119.2529839'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ventura County Medical Center'
        AND o.latitude = '34.2772969'
        AND o.longitude = '-119.2529839'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ventura County Medical Center'
        AND o.latitude = '34.2772969'
        AND o.longitude = '-119.2529839'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ventura County Medical Center'
        AND o.latitude = '34.2772969'
        AND o.longitude = '-119.2529839'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ventura County Medical Center'
        AND o.latitude = '34.2772969'
        AND o.longitude = '-119.2529839'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ventura County Medical Center'
        AND o.latitude = '34.2772969'
        AND o.longitude = '-119.2529839'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ventura County Medical Center'
        AND o.latitude = '34.2772969'
        AND o.longitude = '-119.2529839'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ventura County Medical Center'
        AND o.latitude = '34.2772969'
        AND o.longitude = '-119.2529839'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ventura County Medical Center'
        AND o.latitude = '34.2772969'
        AND o.longitude = '-119.2529839'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ventura County Medical Center'
        AND o.latitude = '34.2772969'
        AND o.longitude = '-119.2529839'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ventura County Medical Center'
        AND o.latitude = '34.2772969'
        AND o.longitude = '-119.2529839'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Tyvek Suits',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ventura County Medical Center'
        AND o.latitude = '34.2772969'
        AND o.longitude = '-119.2529839'));

COMMIT;
