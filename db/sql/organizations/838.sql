
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
      'Preferred Choice Home Healthcare',
      '3526 Elmhurst Ave
Royal Oak, MI 48073',
      'Royal Oak',
      'MI',
      'Please leave on front step. I am the owner of a home healthcare company, and welcome any PPE donations that I can disburse to my nurses and therapists as supplies arrive. ',
      'No',
      '42.5204497',
      '-83.1718298'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Preferred Choice Home Healthcare'
        AND o.latitude = '42.5204497'
        AND o.longitude = '-83.1718298'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Preferred Choice Home Healthcare'
        AND o.latitude = '42.5204497'
        AND o.longitude = '-83.1718298'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Preferred Choice Home Healthcare'
        AND o.latitude = '42.5204497'
        AND o.longitude = '-83.1718298'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Preferred Choice Home Healthcare'
        AND o.latitude = '42.5204497'
        AND o.longitude = '-83.1718298'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Preferred Choice Home Healthcare'
        AND o.latitude = '42.5204497'
        AND o.longitude = '-83.1718298'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Preferred Choice Home Healthcare'
        AND o.latitude = '42.5204497'
        AND o.longitude = '-83.1718298'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Preferred Choice Home Healthcare'
        AND o.latitude = '42.5204497'
        AND o.longitude = '-83.1718298'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Preferred Choice Home Healthcare'
        AND o.latitude = '42.5204497'
        AND o.longitude = '-83.1718298'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Preferred Choice Home Healthcare'
        AND o.latitude = '42.5204497'
        AND o.longitude = '-83.1718298'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Preferred Choice Home Healthcare'
        AND o.latitude = '42.5204497'
        AND o.longitude = '-83.1718298'));

COMMIT;
