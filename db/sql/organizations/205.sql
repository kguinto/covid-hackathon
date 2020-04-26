
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
      'Greater Baltimore Medical Center',
      '6701 Charles St
Towson, MD 21204',
      'Towson',
      'MD',
      'Donation in front of ED tent at GBMC campus',
      'Yes',
      '39.3902857',
      '-76.6249755'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Greater Baltimore Medical Center'
        AND o.latitude = '39.3902857'
        AND o.longitude = '-76.6249755'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Greater Baltimore Medical Center'
        AND o.latitude = '39.3902857'
        AND o.longitude = '-76.6249755'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Greater Baltimore Medical Center'
        AND o.latitude = '39.3902857'
        AND o.longitude = '-76.6249755'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Greater Baltimore Medical Center'
        AND o.latitude = '39.3902857'
        AND o.longitude = '-76.6249755'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Greater Baltimore Medical Center'
        AND o.latitude = '39.3902857'
        AND o.longitude = '-76.6249755'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Greater Baltimore Medical Center'
        AND o.latitude = '39.3902857'
        AND o.longitude = '-76.6249755'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Greater Baltimore Medical Center'
        AND o.latitude = '39.3902857'
        AND o.longitude = '-76.6249755'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Greater Baltimore Medical Center'
        AND o.latitude = '39.3902857'
        AND o.longitude = '-76.6249755'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Greater Baltimore Medical Center'
        AND o.latitude = '39.3902857'
        AND o.longitude = '-76.6249755'));

COMMIT;
