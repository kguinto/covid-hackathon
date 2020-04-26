
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
      'Valencia Hills Health and Rehabilitation ',
      '1350 Sleepy Hill Rd
Lakeland, FL 33810',
      'Lakeland',
      'FL',
      'Please call 618-615-2604 to schedule pick-up, delivery, mailing etc.  ',
      'Please ensure items are unused/clean, thank you. ',
      '28.0964074',
      '-81.9787505'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valencia Hills Health and Rehabilitation '
        AND o.latitude = '28.0964074'
        AND o.longitude = '-81.9787505'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valencia Hills Health and Rehabilitation '
        AND o.latitude = '28.0964074'
        AND o.longitude = '-81.9787505'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valencia Hills Health and Rehabilitation '
        AND o.latitude = '28.0964074'
        AND o.longitude = '-81.9787505'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valencia Hills Health and Rehabilitation '
        AND o.latitude = '28.0964074'
        AND o.longitude = '-81.9787505'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valencia Hills Health and Rehabilitation '
        AND o.latitude = '28.0964074'
        AND o.longitude = '-81.9787505'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valencia Hills Health and Rehabilitation '
        AND o.latitude = '28.0964074'
        AND o.longitude = '-81.9787505'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valencia Hills Health and Rehabilitation '
        AND o.latitude = '28.0964074'
        AND o.longitude = '-81.9787505'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valencia Hills Health and Rehabilitation '
        AND o.latitude = '28.0964074'
        AND o.longitude = '-81.9787505'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valencia Hills Health and Rehabilitation '
        AND o.latitude = '28.0964074'
        AND o.longitude = '-81.9787505'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valencia Hills Health and Rehabilitation '
        AND o.latitude = '28.0964074'
        AND o.longitude = '-81.9787505'));

COMMIT;
