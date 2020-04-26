
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
      'The Peaks',
      '3150 N Winding Brook Rd
Flagstaff, AZ 86001',
      'Flagstaff',
      'AZ',
      'lease at front door',
      'Yes',
      '35.2339813',
      '-111.6593679'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Peaks'
        AND o.latitude = '35.2339813'
        AND o.longitude = '-111.6593679'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Peaks'
        AND o.latitude = '35.2339813'
        AND o.longitude = '-111.6593679'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Peaks'
        AND o.latitude = '35.2339813'
        AND o.longitude = '-111.6593679'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Peaks'
        AND o.latitude = '35.2339813'
        AND o.longitude = '-111.6593679'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Peaks'
        AND o.latitude = '35.2339813'
        AND o.longitude = '-111.6593679'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Peaks'
        AND o.latitude = '35.2339813'
        AND o.longitude = '-111.6593679'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Peaks'
        AND o.latitude = '35.2339813'
        AND o.longitude = '-111.6593679'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Peaks'
        AND o.latitude = '35.2339813'
        AND o.longitude = '-111.6593679'));

COMMIT;
