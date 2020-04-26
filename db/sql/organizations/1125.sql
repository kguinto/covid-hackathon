
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
      'Logistics Health, Inc. (LHI) Veterans Exams',
      '17030 Nanes Dr #111
Houston, TX 77090',
      'Houston, Texas',
      'TX',
      'Call to arrange drop off - Shawn De La Garza 713-208-7226 or mail to LHI Veterans Exams, ATTN: Christine, 17030 Nanes Road, Suite 111, Houston, Texas 77090',
      'Yes',
      '30.0173568',
      '-95.4465778'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Logistics Health, Inc. (LHI) Veterans Exams'
        AND o.latitude = '30.0173568'
        AND o.longitude = '-95.4465778'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Logistics Health, Inc. (LHI) Veterans Exams'
        AND o.latitude = '30.0173568'
        AND o.longitude = '-95.4465778'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Logistics Health, Inc. (LHI) Veterans Exams'
        AND o.latitude = '30.0173568'
        AND o.longitude = '-95.4465778'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Logistics Health, Inc. (LHI) Veterans Exams'
        AND o.latitude = '30.0173568'
        AND o.longitude = '-95.4465778'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Logistics Health, Inc. (LHI) Veterans Exams'
        AND o.latitude = '30.0173568'
        AND o.longitude = '-95.4465778'));

COMMIT;
