
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
      'Texas Health Presbyterian Hospital of Flower Mound',
      '4400 Long Prairie Rd
Flower Mound, TX 75028',
      'Flower Mound',
      'TX',
      'Call 469-322-7609 days ahead to arrange dropoff at front entrance',
      'Yes',
      '33.0456562',
      '-97.0675146'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Texas Health Presbyterian Hospital of Flower Mound'
        AND o.latitude = '33.0456562'
        AND o.longitude = '-97.0675146'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Texas Health Presbyterian Hospital of Flower Mound'
        AND o.latitude = '33.0456562'
        AND o.longitude = '-97.0675146'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Texas Health Presbyterian Hospital of Flower Mound'
        AND o.latitude = '33.0456562'
        AND o.longitude = '-97.0675146'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Texas Health Presbyterian Hospital of Flower Mound'
        AND o.latitude = '33.0456562'
        AND o.longitude = '-97.0675146'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Texas Health Presbyterian Hospital of Flower Mound'
        AND o.latitude = '33.0456562'
        AND o.longitude = '-97.0675146'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Texas Health Presbyterian Hospital of Flower Mound'
        AND o.latitude = '33.0456562'
        AND o.longitude = '-97.0675146'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Texas Health Presbyterian Hospital of Flower Mound'
        AND o.latitude = '33.0456562'
        AND o.longitude = '-97.0675146'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Texas Health Presbyterian Hospital of Flower Mound'
        AND o.latitude = '33.0456562'
        AND o.longitude = '-97.0675146'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Texas Health Presbyterian Hospital of Flower Mound'
        AND o.latitude = '33.0456562'
        AND o.longitude = '-97.0675146'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Texas Health Presbyterian Hospital of Flower Mound'
        AND o.latitude = '33.0456562'
        AND o.longitude = '-97.0675146'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('handmake masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Texas Health Presbyterian Hospital of Flower Mound'
        AND o.latitude = '33.0456562'
        AND o.longitude = '-97.0675146'));

COMMIT;
