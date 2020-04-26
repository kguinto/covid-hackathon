
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
      'Stoughton Meadows Assisted Living (CBRF) 40 Residents',
      '2321 Jackson St
Stoughton, WI 53589',
      'Stoughton',
      'WI',
      '2321 Jackson St. Stoughton, WI 53589 ATTN: Holly (Executive Director)',
      'Yes',
      '42.9207639',
      '-89.2487242'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stoughton Meadows Assisted Living (CBRF) 40 Residents'
        AND o.latitude = '42.9207639'
        AND o.longitude = '-89.2487242'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stoughton Meadows Assisted Living (CBRF) 40 Residents'
        AND o.latitude = '42.9207639'
        AND o.longitude = '-89.2487242'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stoughton Meadows Assisted Living (CBRF) 40 Residents'
        AND o.latitude = '42.9207639'
        AND o.longitude = '-89.2487242'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stoughton Meadows Assisted Living (CBRF) 40 Residents'
        AND o.latitude = '42.9207639'
        AND o.longitude = '-89.2487242'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stoughton Meadows Assisted Living (CBRF) 40 Residents'
        AND o.latitude = '42.9207639'
        AND o.longitude = '-89.2487242'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stoughton Meadows Assisted Living (CBRF) 40 Residents'
        AND o.latitude = '42.9207639'
        AND o.longitude = '-89.2487242'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stoughton Meadows Assisted Living (CBRF) 40 Residents'
        AND o.latitude = '42.9207639'
        AND o.longitude = '-89.2487242'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stoughton Meadows Assisted Living (CBRF) 40 Residents'
        AND o.latitude = '42.9207639'
        AND o.longitude = '-89.2487242'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stoughton Meadows Assisted Living (CBRF) 40 Residents'
        AND o.latitude = '42.9207639'
        AND o.longitude = '-89.2487242'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stoughton Meadows Assisted Living (CBRF) 40 Residents'
        AND o.latitude = '42.9207639'
        AND o.longitude = '-89.2487242'));

COMMIT;
