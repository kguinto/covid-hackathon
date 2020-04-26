
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
      'Cabell Huntington Hospital',
      '1340 Hal Greer Blvd
Huntington, WV 25701',
      'Huntington',
      'WV',
      'Keshia Bowen , Edwards Comprehensive Cancer Center,1400 Hal Greer Blvd, Huntington, WV 25701.  304-399-6521',
      'Yes',
      '38.409587',
      '-82.427083'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cabell Huntington Hospital'
        AND o.latitude = '38.409587'
        AND o.longitude = '-82.427083'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cabell Huntington Hospital'
        AND o.latitude = '38.409587'
        AND o.longitude = '-82.427083'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cabell Huntington Hospital'
        AND o.latitude = '38.409587'
        AND o.longitude = '-82.427083'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cabell Huntington Hospital'
        AND o.latitude = '38.409587'
        AND o.longitude = '-82.427083'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cabell Huntington Hospital'
        AND o.latitude = '38.409587'
        AND o.longitude = '-82.427083'));

COMMIT;
