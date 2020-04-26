
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
      'UC Irvine Medical Center',
      '4600 Health Sciences Rd building 41
Irvine, CA 92617',
      'Irvine ',
      'CA',
      'Building 41 follow the signs for EHS parking ',
      'Yes',
      '33.6391699',
      '-117.8499649'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'UC Irvine Medical Center'
        AND o.latitude = '33.6391699'
        AND o.longitude = '-117.8499649'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'UC Irvine Medical Center'
        AND o.latitude = '33.6391699'
        AND o.longitude = '-117.8499649'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'UC Irvine Medical Center'
        AND o.latitude = '33.6391699'
        AND o.longitude = '-117.8499649'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'UC Irvine Medical Center'
        AND o.latitude = '33.6391699'
        AND o.longitude = '-117.8499649'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'UC Irvine Medical Center'
        AND o.latitude = '33.6391699'
        AND o.longitude = '-117.8499649'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'UC Irvine Medical Center'
        AND o.latitude = '33.6391699'
        AND o.longitude = '-117.8499649'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'UC Irvine Medical Center'
        AND o.latitude = '33.6391699'
        AND o.longitude = '-117.8499649'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'UC Irvine Medical Center'
        AND o.latitude = '33.6391699'
        AND o.longitude = '-117.8499649'));

COMMIT;
