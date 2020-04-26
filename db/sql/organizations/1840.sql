
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
      'Bexar County Medical Society',
      '4334 N Loop 1604 W #200
Shavano Park, TX 78249',
      'San Antonio',
      'TX',
      '4334 N Loop 1604 W, Ste 200 - Call 210-301-4391 for drop off',
      'Yes',
      '29.5964044',
      '-98.5685427'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bexar County Medical Society'
        AND o.latitude = '29.5964044'
        AND o.longitude = '-98.5685427'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bexar County Medical Society'
        AND o.latitude = '29.5964044'
        AND o.longitude = '-98.5685427'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bexar County Medical Society'
        AND o.latitude = '29.5964044'
        AND o.longitude = '-98.5685427'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bexar County Medical Society'
        AND o.latitude = '29.5964044'
        AND o.longitude = '-98.5685427'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bexar County Medical Society'
        AND o.latitude = '29.5964044'
        AND o.longitude = '-98.5685427'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bexar County Medical Society'
        AND o.latitude = '29.5964044'
        AND o.longitude = '-98.5685427'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bexar County Medical Society'
        AND o.latitude = '29.5964044'
        AND o.longitude = '-98.5685427'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bexar County Medical Society'
        AND o.latitude = '29.5964044'
        AND o.longitude = '-98.5685427'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bexar County Medical Society'
        AND o.latitude = '29.5964044'
        AND o.longitude = '-98.5685427'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bexar County Medical Society'
        AND o.latitude = '29.5964044'
        AND o.longitude = '-98.5685427'));

COMMIT;
