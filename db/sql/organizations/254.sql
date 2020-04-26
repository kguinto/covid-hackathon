
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
      'Kaiser Permanente - San Rafael, ER ',
      '99 Montecillo Rd
San Rafael, CA 94903',
      'San Rafael ',
      'CA',
      'Can drop off at ER entrance. Ask for manager or charge RN. ',
      'No',
      '38.0043293',
      '-122.5546467'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - San Rafael, ER '
        AND o.latitude = '38.0043293'
        AND o.longitude = '-122.5546467'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - San Rafael, ER '
        AND o.latitude = '38.0043293'
        AND o.longitude = '-122.5546467'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - San Rafael, ER '
        AND o.latitude = '38.0043293'
        AND o.longitude = '-122.5546467'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - San Rafael, ER '
        AND o.latitude = '38.0043293'
        AND o.longitude = '-122.5546467'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - San Rafael, ER '
        AND o.latitude = '38.0043293'
        AND o.longitude = '-122.5546467'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - San Rafael, ER '
        AND o.latitude = '38.0043293'
        AND o.longitude = '-122.5546467'));

COMMIT;
