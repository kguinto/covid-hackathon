
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
      '6701 N Charles St
Baltimore, MD 21204',
      'Towson',
      'MD',
      'Main entrance: call Dr. Stark ',
      'No',
      '39.3952133',
      '-76.627243'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Greater Baltimore Medical Center'
        AND o.latitude = '39.3952133'
        AND o.longitude = '-76.627243'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Greater Baltimore Medical Center'
        AND o.latitude = '39.3952133'
        AND o.longitude = '-76.627243'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Greater Baltimore Medical Center'
        AND o.latitude = '39.3952133'
        AND o.longitude = '-76.627243'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Greater Baltimore Medical Center'
        AND o.latitude = '39.3952133'
        AND o.longitude = '-76.627243'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Greater Baltimore Medical Center'
        AND o.latitude = '39.3952133'
        AND o.longitude = '-76.627243'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Greater Baltimore Medical Center'
        AND o.latitude = '39.3952133'
        AND o.longitude = '-76.627243'));

COMMIT;
