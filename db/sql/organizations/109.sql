
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
      'Mills-Peninsula Medical Center',
      '1501 Trousdale Drive
Burlingame, CA 94010',
      'Burlingame',
      'CA',
      'Drop off at ER triage desk.  650-696-5446 (ER Main Line) | Drop off at hospital front door 9AM-5PM M-F, 9AM-12PM S-Su. |
For larger donations, email Dr. Ching at bching@mpema.com or Dr. Alexander Ding at dinga@sutterhealth.org to coordinate pick-up or delivery. ',
      'No',
      '37.5923598',
      '-122.3824811'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mills-Peninsula Medical Center'
        AND o.latitude = '37.5923598'
        AND o.longitude = '-122.3824811'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mills-Peninsula Medical Center'
        AND o.latitude = '37.5923598'
        AND o.longitude = '-122.3824811'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mills-Peninsula Medical Center'
        AND o.latitude = '37.5923598'
        AND o.longitude = '-122.3824811'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mills-Peninsula Medical Center'
        AND o.latitude = '37.5923598'
        AND o.longitude = '-122.3824811'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mills-Peninsula Medical Center'
        AND o.latitude = '37.5923598'
        AND o.longitude = '-122.3824811'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mills-Peninsula Medical Center'
        AND o.latitude = '37.5923598'
        AND o.longitude = '-122.3824811'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mills-Peninsula Medical Center'
        AND o.latitude = '37.5923598'
        AND o.longitude = '-122.3824811'));

COMMIT;
