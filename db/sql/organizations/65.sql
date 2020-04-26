
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
      'Providence Regional Medical Center Everett',
      '1321 Colby Ave
Everett, WA 98201',
      'Everett',
      'WA',
      'Contact DeAnne Okazaki at (425)261-4059 or e-mail deanne.okazaki@providence.org to coordinate',
      'No',
      '47.999898',
      '-122.2074813'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Regional Medical Center Everett'
        AND o.latitude = '47.999898'
        AND o.longitude = '-122.2074813'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Regional Medical Center Everett'
        AND o.latitude = '47.999898'
        AND o.longitude = '-122.2074813'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Regional Medical Center Everett'
        AND o.latitude = '47.999898'
        AND o.longitude = '-122.2074813'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Regional Medical Center Everett'
        AND o.latitude = '47.999898'
        AND o.longitude = '-122.2074813'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Regional Medical Center Everett'
        AND o.latitude = '47.999898'
        AND o.longitude = '-122.2074813'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Regional Medical Center Everett'
        AND o.latitude = '47.999898'
        AND o.longitude = '-122.2074813'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Regional Medical Center Everett'
        AND o.latitude = '47.999898'
        AND o.longitude = '-122.2074813'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Regional Medical Center Everett'
        AND o.latitude = '47.999898'
        AND o.longitude = '-122.2074813'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Isolation gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Regional Medical Center Everett'
        AND o.latitude = '47.999898'
        AND o.longitude = '-122.2074813'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('bleach wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Regional Medical Center Everett'
        AND o.latitude = '47.999898'
        AND o.longitude = '-122.2074813'));

COMMIT;
