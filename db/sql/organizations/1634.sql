
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
      'Hackensack University Medical Center',
      '30 Prospect Ave
Hackensack, NJ 07601',
      'Hackensack ',
      'NJ',
      'ATTN: COMMAND CENTER OR INPATIENT OPERATING ROOM 551-996-2426 PLEASE CALL BEFOREHAND',
      'Yes',
      '40.8840335',
      '-74.0565417'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hackensack University Medical Center'
        AND o.latitude = '40.8840335'
        AND o.longitude = '-74.0565417'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hackensack University Medical Center'
        AND o.latitude = '40.8840335'
        AND o.longitude = '-74.0565417'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hackensack University Medical Center'
        AND o.latitude = '40.8840335'
        AND o.longitude = '-74.0565417'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hackensack University Medical Center'
        AND o.latitude = '40.8840335'
        AND o.longitude = '-74.0565417'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hackensack University Medical Center'
        AND o.latitude = '40.8840335'
        AND o.longitude = '-74.0565417'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hackensack University Medical Center'
        AND o.latitude = '40.8840335'
        AND o.longitude = '-74.0565417'));

COMMIT;
