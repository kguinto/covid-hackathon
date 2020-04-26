
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
      'Tufts Medical Center',
      '25 Harvard St
Boston, MA 02121',
      'Boston',
      'MA',
      'Drop off M-F 7am-3pm at loading dock, located near the bend in Harvard St. Donation instructions and details at: https://www.tuftsmedicalcenter.org/Giving-Support/Give/COVID-19-Support  Contact savePPE@tuftsmedicalcenter.org with questions.',
      'No',
      '42.2991786',
      '-71.0748852'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tufts Medical Center'
        AND o.latitude = '42.2991786'
        AND o.longitude = '-71.0748852'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tufts Medical Center'
        AND o.latitude = '42.2991786'
        AND o.longitude = '-71.0748852'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tufts Medical Center'
        AND o.latitude = '42.2991786'
        AND o.longitude = '-71.0748852'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tufts Medical Center'
        AND o.latitude = '42.2991786'
        AND o.longitude = '-71.0748852'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tufts Medical Center'
        AND o.latitude = '42.2991786'
        AND o.longitude = '-71.0748852'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tufts Medical Center'
        AND o.latitude = '42.2991786'
        AND o.longitude = '-71.0748852'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Homemade masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tufts Medical Center'
        AND o.latitude = '42.2991786'
        AND o.longitude = '-71.0748852'));

COMMIT;
