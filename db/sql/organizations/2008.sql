
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
      'Brookdale Conway',
      '5501 E Michigan St
Orlando, FL 32822',
      'Orlando',
      'FL',
      'Curbside',
      'Unused',
      '28.515222',
      '-81.3137667'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brookdale Conway'
        AND o.latitude = '28.515222'
        AND o.longitude = '-81.3137667'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brookdale Conway'
        AND o.latitude = '28.515222'
        AND o.longitude = '-81.3137667'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brookdale Conway'
        AND o.latitude = '28.515222'
        AND o.longitude = '-81.3137667'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brookdale Conway'
        AND o.latitude = '28.515222'
        AND o.longitude = '-81.3137667'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brookdale Conway'
        AND o.latitude = '28.515222'
        AND o.longitude = '-81.3137667'));

COMMIT;
