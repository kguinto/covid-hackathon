
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
      'UC Irvine Division of Rheumatology ',
      '101 The City Dr S
Orange, CA 92868',
      'Orange ',
      'CA',
      'Pavilion 1, second floor 
Please give to front desk on second floor with attention Dr. Desai ',
      'Yes',
      '33.78728',
      '-117.888284'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'UC Irvine Division of Rheumatology '
        AND o.latitude = '33.78728'
        AND o.longitude = '-117.888284'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'UC Irvine Division of Rheumatology '
        AND o.latitude = '33.78728'
        AND o.longitude = '-117.888284'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'UC Irvine Division of Rheumatology '
        AND o.latitude = '33.78728'
        AND o.longitude = '-117.888284'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'UC Irvine Division of Rheumatology '
        AND o.latitude = '33.78728'
        AND o.longitude = '-117.888284'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'UC Irvine Division of Rheumatology '
        AND o.latitude = '33.78728'
        AND o.longitude = '-117.888284'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'UC Irvine Division of Rheumatology '
        AND o.latitude = '33.78728'
        AND o.longitude = '-117.888284'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'UC Irvine Division of Rheumatology '
        AND o.latitude = '33.78728'
        AND o.longitude = '-117.888284'));

COMMIT;
