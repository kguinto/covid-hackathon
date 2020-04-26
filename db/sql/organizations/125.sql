
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
      'The Ohio State University Wexner Medical Center',
      '660 Ackerman Rd
Columbus, OH 43202',
      'Columbus',
      'OH',
      'Drop off at 610 Ackerman Rd between 8a-5p daily.  Please stay in your car and we will unload for you.  Check https://wexnermedical.osu.edu/features/coronavirus/ways-to-help/donate-supplies">https://wexnermedical.osu.edu/features/coronavirus/ways-to-help/donate-supplies or 614-366-8000 for more information.',
      'No',
      '40.0188871',
      '-83.0306051'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Ohio State University Wexner Medical Center'
        AND o.latitude = '40.0188871'
        AND o.longitude = '-83.0306051'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Ohio State University Wexner Medical Center'
        AND o.latitude = '40.0188871'
        AND o.longitude = '-83.0306051'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Ohio State University Wexner Medical Center'
        AND o.latitude = '40.0188871'
        AND o.longitude = '-83.0306051'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Ohio State University Wexner Medical Center'
        AND o.latitude = '40.0188871'
        AND o.longitude = '-83.0306051'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Ohio State University Wexner Medical Center'
        AND o.latitude = '40.0188871'
        AND o.longitude = '-83.0306051'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Ohio State University Wexner Medical Center'
        AND o.latitude = '40.0188871'
        AND o.longitude = '-83.0306051'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Ohio State University Wexner Medical Center'
        AND o.latitude = '40.0188871'
        AND o.longitude = '-83.0306051'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Ohio State University Wexner Medical Center'
        AND o.latitude = '40.0188871'
        AND o.longitude = '-83.0306051'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Ohio State University Wexner Medical Center'
        AND o.latitude = '40.0188871'
        AND o.longitude = '-83.0306051'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Ohio State University Wexner Medical Center'
        AND o.latitude = '40.0188871'
        AND o.longitude = '-83.0306051'));

COMMIT;
