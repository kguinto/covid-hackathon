
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
      'UMass memorial medical center',
      '281 Lincoln St
Worcester, MA 01605',
      'Worcester',
      'MA',
      '',
      'Yes',
      '42.2856074',
      '-71.7901354'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'UMass memorial medical center'
        AND o.latitude = '42.2856074'
        AND o.longitude = '-71.7901354'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'UMass memorial medical center'
        AND o.latitude = '42.2856074'
        AND o.longitude = '-71.7901354'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'UMass memorial medical center'
        AND o.latitude = '42.2856074'
        AND o.longitude = '-71.7901354'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'UMass memorial medical center'
        AND o.latitude = '42.2856074'
        AND o.longitude = '-71.7901354'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'UMass memorial medical center'
        AND o.latitude = '42.2856074'
        AND o.longitude = '-71.7901354'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'UMass memorial medical center'
        AND o.latitude = '42.2856074'
        AND o.longitude = '-71.7901354'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'UMass memorial medical center'
        AND o.latitude = '42.2856074'
        AND o.longitude = '-71.7901354'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'UMass memorial medical center'
        AND o.latitude = '42.2856074'
        AND o.longitude = '-71.7901354'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'UMass memorial medical center'
        AND o.latitude = '42.2856074'
        AND o.longitude = '-71.7901354'));

COMMIT;
