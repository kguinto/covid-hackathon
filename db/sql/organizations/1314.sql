
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
      'Fairlane Gardens Nursing and Rehab',
      '21 Fairlane Rd
Reading, PA 19606',
      'Reading',
      'PA',
      '21 Fairlane Road',
      'Yes',
      '40.3041946',
      '-75.8522606'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fairlane Gardens Nursing and Rehab'
        AND o.latitude = '40.3041946'
        AND o.longitude = '-75.8522606'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fairlane Gardens Nursing and Rehab'
        AND o.latitude = '40.3041946'
        AND o.longitude = '-75.8522606'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fairlane Gardens Nursing and Rehab'
        AND o.latitude = '40.3041946'
        AND o.longitude = '-75.8522606'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fairlane Gardens Nursing and Rehab'
        AND o.latitude = '40.3041946'
        AND o.longitude = '-75.8522606'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fairlane Gardens Nursing and Rehab'
        AND o.latitude = '40.3041946'
        AND o.longitude = '-75.8522606'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fairlane Gardens Nursing and Rehab'
        AND o.latitude = '40.3041946'
        AND o.longitude = '-75.8522606'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fairlane Gardens Nursing and Rehab'
        AND o.latitude = '40.3041946'
        AND o.longitude = '-75.8522606'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fairlane Gardens Nursing and Rehab'
        AND o.latitude = '40.3041946'
        AND o.longitude = '-75.8522606'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fairlane Gardens Nursing and Rehab'
        AND o.latitude = '40.3041946'
        AND o.longitude = '-75.8522606'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fairlane Gardens Nursing and Rehab'
        AND o.latitude = '40.3041946'
        AND o.longitude = '-75.8522606'));

COMMIT;
