
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
      'Sentara Northern Virginia Medical Center',
      '2300 Opitz Blvd
Woodbridge, VA 22191',
      'Woodbridge',
      'VA',
      'Please contact Patient Advocate to arrange curbside drop off 703-523-1369',
      'Yes',
      '38.6369926',
      '-77.286438'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara Northern Virginia Medical Center'
        AND o.latitude = '38.6369926'
        AND o.longitude = '-77.286438'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara Northern Virginia Medical Center'
        AND o.latitude = '38.6369926'
        AND o.longitude = '-77.286438'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara Northern Virginia Medical Center'
        AND o.latitude = '38.6369926'
        AND o.longitude = '-77.286438'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara Northern Virginia Medical Center'
        AND o.latitude = '38.6369926'
        AND o.longitude = '-77.286438'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara Northern Virginia Medical Center'
        AND o.latitude = '38.6369926'
        AND o.longitude = '-77.286438'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara Northern Virginia Medical Center'
        AND o.latitude = '38.6369926'
        AND o.longitude = '-77.286438'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara Northern Virginia Medical Center'
        AND o.latitude = '38.6369926'
        AND o.longitude = '-77.286438'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara Northern Virginia Medical Center'
        AND o.latitude = '38.6369926'
        AND o.longitude = '-77.286438'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara Northern Virginia Medical Center'
        AND o.latitude = '38.6369926'
        AND o.longitude = '-77.286438'));

COMMIT;
