
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
      'UMASS Medical Center - Memorial Campus',
      '119 Belmont St
Worcester, MA 01605',
      'Worcester',
      'MA',
      'Drop off at front desk at:
UMASS Medical Center - Memorial Campus
119 Belmont St
Worcester, MA 01605

|

Or mail/ ship to:
COMMAND CENTER
Attention: SUPPLY CHAIN DONATIONS
UMASS Medical Center
55 Lake Avenue North
Worcester, MA 01655',
      'No',
      '42.2729207',
      '-71.7912841'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'UMASS Medical Center - Memorial Campus'
        AND o.latitude = '42.2729207'
        AND o.longitude = '-71.7912841'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'UMASS Medical Center - Memorial Campus'
        AND o.latitude = '42.2729207'
        AND o.longitude = '-71.7912841'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'UMASS Medical Center - Memorial Campus'
        AND o.latitude = '42.2729207'
        AND o.longitude = '-71.7912841'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'UMASS Medical Center - Memorial Campus'
        AND o.latitude = '42.2729207'
        AND o.longitude = '-71.7912841'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'UMASS Medical Center - Memorial Campus'
        AND o.latitude = '42.2729207'
        AND o.longitude = '-71.7912841'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'UMASS Medical Center - Memorial Campus'
        AND o.latitude = '42.2729207'
        AND o.longitude = '-71.7912841'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'UMASS Medical Center - Memorial Campus'
        AND o.latitude = '42.2729207'
        AND o.longitude = '-71.7912841'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'UMASS Medical Center - Memorial Campus'
        AND o.latitude = '42.2729207'
        AND o.longitude = '-71.7912841'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'UMASS Medical Center - Memorial Campus'
        AND o.latitude = '42.2729207'
        AND o.longitude = '-71.7912841'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Phone chargers for patients in isolation',
    (SELECT id FROM organizations o
      WHERE o.name = 'UMASS Medical Center - Memorial Campus'
        AND o.latitude = '42.2729207'
        AND o.longitude = '-71.7912841'));

COMMIT;
