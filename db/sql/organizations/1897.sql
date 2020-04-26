
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
      'Hayward Health Care and Wellness Center',
      '1805 West St
Hayward, CA 94545',
      'Hayward',
      'CA',
      'Please address to Alison Chinn ring door bell at front  door or call 510 299 0927',
      'No',
      '37.6452254',
      '-122.1161401'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hayward Health Care and Wellness Center'
        AND o.latitude = '37.6452254'
        AND o.longitude = '-122.1161401'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hayward Health Care and Wellness Center'
        AND o.latitude = '37.6452254'
        AND o.longitude = '-122.1161401'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hayward Health Care and Wellness Center'
        AND o.latitude = '37.6452254'
        AND o.longitude = '-122.1161401'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hayward Health Care and Wellness Center'
        AND o.latitude = '37.6452254'
        AND o.longitude = '-122.1161401'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hayward Health Care and Wellness Center'
        AND o.latitude = '37.6452254'
        AND o.longitude = '-122.1161401'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hayward Health Care and Wellness Center'
        AND o.latitude = '37.6452254'
        AND o.longitude = '-122.1161401'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hayward Health Care and Wellness Center'
        AND o.latitude = '37.6452254'
        AND o.longitude = '-122.1161401'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hayward Health Care and Wellness Center'
        AND o.latitude = '37.6452254'
        AND o.longitude = '-122.1161401'));

COMMIT;
