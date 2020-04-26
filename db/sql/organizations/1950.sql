
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
      'Southwest Orlando Family Medicine ',
      '7400 Docs Grove Cir
Orlando, FL 32819',
      'Orlando',
      'FL',
      'Drop off at tent',
      'No',
      '28.4295712',
      '-81.4808038'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southwest Orlando Family Medicine '
        AND o.latitude = '28.4295712'
        AND o.longitude = '-81.4808038'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southwest Orlando Family Medicine '
        AND o.latitude = '28.4295712'
        AND o.longitude = '-81.4808038'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southwest Orlando Family Medicine '
        AND o.latitude = '28.4295712'
        AND o.longitude = '-81.4808038'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southwest Orlando Family Medicine '
        AND o.latitude = '28.4295712'
        AND o.longitude = '-81.4808038'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southwest Orlando Family Medicine '
        AND o.latitude = '28.4295712'
        AND o.longitude = '-81.4808038'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southwest Orlando Family Medicine '
        AND o.latitude = '28.4295712'
        AND o.longitude = '-81.4808038'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southwest Orlando Family Medicine '
        AND o.latitude = '28.4295712'
        AND o.longitude = '-81.4808038'));

COMMIT;
