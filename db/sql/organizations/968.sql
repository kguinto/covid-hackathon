
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
      'Kaiser Permanente - Falls Church',
      '201 N Washington St
Falls Church, VA 22046',
      'Falls Church',
      'VA',
      'Attn: Kaiser, Falls Church. Desperately need N95 masks for nurses etc. running out of equipment.

Nurse: Siluna Neou or ER ',
      'No',
      '38.8838358',
      '-77.1700053'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Falls Church'
        AND o.latitude = '38.8838358'
        AND o.longitude = '-77.1700053'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Falls Church'
        AND o.latitude = '38.8838358'
        AND o.longitude = '-77.1700053'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Falls Church'
        AND o.latitude = '38.8838358'
        AND o.longitude = '-77.1700053'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Falls Church'
        AND o.latitude = '38.8838358'
        AND o.longitude = '-77.1700053'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Falls Church'
        AND o.latitude = '38.8838358'
        AND o.longitude = '-77.1700053'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Falls Church'
        AND o.latitude = '38.8838358'
        AND o.longitude = '-77.1700053'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Falls Church'
        AND o.latitude = '38.8838358'
        AND o.longitude = '-77.1700053'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Falls Church'
        AND o.latitude = '38.8838358'
        AND o.longitude = '-77.1700053'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Falls Church'
        AND o.latitude = '38.8838358'
        AND o.longitude = '-77.1700053'));

COMMIT;
