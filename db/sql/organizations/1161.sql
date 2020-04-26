
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
      'Sarah D. Culbertson Memorial Hospital',
      '238 S Congress St
Rushville, IL 62681',
      'Rushville',
      'IL',
      'ATTN:  Leah Wilson',
      'Yes',
      '40.118099',
      '-90.564367'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sarah D. Culbertson Memorial Hospital'
        AND o.latitude = '40.118099'
        AND o.longitude = '-90.564367'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sarah D. Culbertson Memorial Hospital'
        AND o.latitude = '40.118099'
        AND o.longitude = '-90.564367'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sarah D. Culbertson Memorial Hospital'
        AND o.latitude = '40.118099'
        AND o.longitude = '-90.564367'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sarah D. Culbertson Memorial Hospital'
        AND o.latitude = '40.118099'
        AND o.longitude = '-90.564367'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sarah D. Culbertson Memorial Hospital'
        AND o.latitude = '40.118099'
        AND o.longitude = '-90.564367'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sarah D. Culbertson Memorial Hospital'
        AND o.latitude = '40.118099'
        AND o.longitude = '-90.564367'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sarah D. Culbertson Memorial Hospital'
        AND o.latitude = '40.118099'
        AND o.longitude = '-90.564367'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sarah D. Culbertson Memorial Hospital'
        AND o.latitude = '40.118099'
        AND o.longitude = '-90.564367'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sarah D. Culbertson Memorial Hospital'
        AND o.latitude = '40.118099'
        AND o.longitude = '-90.564367'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sarah D. Culbertson Memorial Hospital'
        AND o.latitude = '40.118099'
        AND o.longitude = '-90.564367'));

COMMIT;
