
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
      'One Medical',
      '2196 E Williams Field Rd #116
Gilbert, AZ 85296',
      'Gilbert',
      'AZ',
      'ATTN: Troy Birmingham',
      'Yes',
      '33.3113566',
      '-111.7423688'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '33.3113566'
        AND o.longitude = '-111.7423688'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '33.3113566'
        AND o.longitude = '-111.7423688'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '33.3113566'
        AND o.longitude = '-111.7423688'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '33.3113566'
        AND o.longitude = '-111.7423688'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '33.3113566'
        AND o.longitude = '-111.7423688'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '33.3113566'
        AND o.longitude = '-111.7423688'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '33.3113566'
        AND o.longitude = '-111.7423688'));

COMMIT;
